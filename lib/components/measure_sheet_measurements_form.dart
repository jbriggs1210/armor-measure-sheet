import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../db/measure_sheet.dart';
import '../services/isar_service.dart';
import 'measure_sheet_form_constants.dart';

class MeasureSheetMeasurementsForm extends StatefulWidget {
  final MeasureSheet measureSheet;

  const MeasureSheetMeasurementsForm({super.key, required this.measureSheet});

  @override
  State<StatefulWidget> createState() => _MeasureSheetMeasurementsFormState();
}

class _MeasureSheetMeasurementsFormState
    extends State<MeasureSheetMeasurementsForm> {
  late MeasureSheet measureSheetState;
  late ScrollController scrollController;
  late var height = MediaQuery.of(context).size.height;
  int _index = 0;

  // measure information form
  late final FormGroup measurementInfoForm = FormGroup({
    'measureDate': FormControl<DateTime>(
      value: measureSheetState.measureDate ?? DateTime.now(),
    ),
    'measurer': FormControl<String?>(
      value: measureSheetState.measurer,
      validators: [],
    ),
    'photosTaken': FormControl<bool>(value: measureSheetState.photosTaken),
    'photosUploaded': FormControl<bool>(
      value: measureSheetState.photosUploaded,
    ),
    'salesInfoAccurate': FormControl<bool>(
      value: measureSheetState.salesInfoAccurate,
    ),
    'activeLevelsLower': FormControl<bool>(
      value: measureSheetState.activeLevels.lowerLevel,
    ),
    'activeLevelsFirst': FormControl<bool>(
      value: measureSheetState.activeLevels.first,
    ),
    'activeLevelsSecond': FormControl<bool>(
      value: measureSheetState.activeLevels.second,
    ),
    'activeLevelsThird': FormControl<bool>(
      value: measureSheetState.activeLevels.third,
    ),
    'activeLevelsRaised': FormControl<bool>(
      value: measureSheetState.activeLevels.raised,
    ),
    'notes': FormArray<String>(_buildNotesInitial()),
    'addOnMeasurements': FormControl<bool>(
      value: measureSheetState.measurementInfo.addOnMeasurements,
    ),
    'measurements': FormArray<Map<String, dynamic>>(
      _buildMeasurementsInitial(),
    ),
  });

  @override
  void initState() {
    setState(() {
      measureSheetState = widget.measureSheet;
      scrollController = ScrollController();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Step> steps = _buildSteps();

    return Scrollbar(
      trackVisibility: true,
      thickness: 6.0,
      controller: scrollController,
      child: Stepper(
        controller: scrollController,
        // physics: NeverScrollableScrollPhysics(),
        currentStep: _index,
        onStepCancel: () {
          if (_index > 0) {
            setState(() {
              _index -= 1;
            });
          }
        },
        onStepContinue: () {
          if (_index == 3) {
            // todo: validate span / nSpan increments of .25
          }

          // when we are "saving"
          if (_index == steps.length - 1) {
            _saveMeasureSheet();
            return;
          }
          // otherwise we are moving to next step
          if (_index <= steps.length) {
            setState(() {
              _index += 1;
            });
          }
        },
        onStepTapped: (int index) {
          setState(() {
            _index = index;
          });
        },
        steps: steps,
        controlsBuilder: (BuildContext context, ControlsDetails details) {
          final isLastStep = _index == steps.length - 1;

          return Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: details.onStepContinue,
                  child: Text(isLastStep ? 'Save' : 'Next'),
                ),
                if (_index != 0)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: TextButton(
                      onPressed: details.onStepCancel,
                      child: const Text('Back'),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _saveMeasureSheet() async {
    bool doSave = true;
    int indexToGoTo = 0;

    // todo: this needs some tidying up for sure
    // check each step is valid before we try to save / create
    if (!measurementInfoForm.valid) {
      measurementInfoForm.markAllAsTouched();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            MeasureSheetFormConstants.snackbarMeasurementInformationErrors,
          ),
          behavior: SnackBarBehavior.floating,
        ),
      );
      doSave = false;
      indexToGoTo = 0;
    }

    if (!doSave) {
      setState(() {
        _index = indexToGoTo;
      });
      return;
    }

    await IsarService.isarDatabase.writeTxn(
      () => IsarService.isarDatabase.measureSheets.put(measureSheetState),
    );
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  Step _measurementInfoStep() {
    return Step(
      title: const Text('Measurement Information'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: measurementInfoForm,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10.0,
              runSpacing: 16.0,
              children: <Widget>[
                ReactiveStatusListenableBuilder(
                  formControlName: 'measureDate',
                  builder: (context, control, child) {
                    measureSheetState.measureDate = control.value as DateTime?;
                    return ReactiveDateTimePicker(
                      formControlName: 'measureDate',
                      valueAccessor: DateTimeValueAccessor(
                        dateTimeFormat: DateFormat('MM/dd/yyyy'),
                      ),
                      decoration: InputDecoration(
                        constraints: BoxConstraints.loose(
                          Size.fromWidth(250.0),
                        ),
                        labelText: 'Date',
                        border: OutlineInputBorder(),
                        helperText: '',
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                    );
                  },
                ),
                ReactiveTextField<String?>(
                  formControlName: 'measurer',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(500.0)),
                    labelText: 'Measurer',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.measurer = control.value;
                    }),
                  },
                ),
                Row(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Photos Taken'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'photosTaken',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.photosTaken = control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Photos Uploaded'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'photosUploaded',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.photosUploaded = control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Sales Info Accurate'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'salesInfoAccurate',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.salesInfoAccurate =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Step _activeLevelsStep() {
    return Step(
      title: const Text('Active Levels'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: measurementInfoForm,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10.0,
              runSpacing: 16.0,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Lower Level'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'activeLevelsLower',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.activeLevels.lowerLevel =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('First Level'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'activeLevelsFirst',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.activeLevels.first = control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Second Level'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'activeLevelsSecond',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.activeLevels.second =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Third Level'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'activeLevelsThird',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.activeLevels.third = control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Raised Level'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'activeLevelsRaised',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.activeLevels.raised =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Step _notesStep() {
    return Step(
      title: Row(children: [Text('Notes')]),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: measurementInfoForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10.0,
              children: <Widget>[
                _notes(),
                // Create new blank note
                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                      border: BoxBorder.all(color: Colors.red),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                        alignment: AlignmentGeometry.center,
                        child: Text('Add new note'),
                      ),
                    ),
                  ),
                  onTap: () {
                    // for ui
                    var formArray =
                        measurementInfoForm.control('notes')
                            as FormArray<String>;
                    formArray.add(FormControl<String>(value: ''));

                    _scrollToBottom();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Step _measurementsStep() {
    return Step(
      title: Text('Measurements'),
      content: ReactiveForm(
        formGroup: measurementInfoForm,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 10.0,
          runSpacing: 16.0,
          children: <Widget>[
            Row(
              children: [
                Text(
                  'Measurements reflect add-on dimensions for Rolldown and Accordions.',
                ),
                ReactiveCheckbox(
                  formControlName: 'addOnMeasurements',
                  onChanged: (control) {
                    setState(() {
                      measureSheetState.measurementInfo.addOnMeasurements =
                          control.value!;
                    });
                  },
                ),
              ],
            ),
            _measurements(),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  border: BoxBorder.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: AlignmentGeometry.center,
                    child: Text('Add new opening'),
                  ),
                ),
              ),
              onTap: () {
                // for ui
                var formArray =
                    measurementInfoForm.control('measurements')
                        as FormArray<Map<String, dynamic>>;
                var record = MeasurementRecord.defaults();
                var nextOpeningNumber = 1;
                if (formArray.value!.isNotEmpty) {
                  nextOpeningNumber =
                      formArray.value!.last!['openingNumber'] + 1;
                }
                record.openingNumber = nextOpeningNumber;
                formArray.add(_measurementRecordFg(record));

                // add to data structure
                setState(() {
                  measureSheetState.measurementInfo.measurementRecords = [
                    ...measureSheetState.measurementInfo.measurementRecords,
                    record,
                  ];
                });

                _scrollToBottom();
              },
            ),
          ],
        ),
      ),
    );
  }

  // for ui
  Widget _notes() {
    return ReactiveFormArray(
      formArrayName: 'notes',
      builder: (context, formArray, child) {
        int length = formArray.controls.length;
        return ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox.fromSize(size: Size.fromHeight(4.00));
          },
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: length,
          itemBuilder: (context, index) {
            final FormControl<String> control =
                formArray.control(index.toString()) as FormControl<String>;
            final uniqueKey = ValueKey(control.value);

            // single note
            return PhysicalModel(
              color: ThemeData
                  .light()
                  .canvasColor,
              shadowColor: ThemeData
                  .dark()
                  .canvasColor,
              elevation: 2.0,
              child: Container(
                decoration: BoxDecoration(
                    border: BoxBorder.all(color: Colors.black),
                    borderRadius: BorderRadiusGeometry.circular(5.0)),
                child: Row(
                  key: uniqueKey,
                  children: [
                    IconButton(
                      onPressed: () {
                        // from ui
                        formArray.removeAt(index);
                        // from data structure
                        setState(() {
                          var newList = measureSheetState.measurementInfo.notes
                              .toList();
                          newList.removeAt(index);
                          measureSheetState.measurementInfo.notes = newList;
                        });
                      },
                      icon: Icon(Icons.delete_sharp, color: Colors.red[900]),
                    ),
                    Expanded(
                      child: ReactiveTextField<String>(
                        formControlName: index.toString(),
                        decoration: InputDecoration(labelText: 'Note',
                            border: InputBorder.none),
                        onChanged: (control) {
                          if (measureSheetState.measurementInfo.notes.length <=
                              index) {
                            measureSheetState.measurementInfo.notes = [
                              ...measureSheetState.measurementInfo.notes,
                              '',
                            ];
                          }
                          measureSheetState.measurementInfo.notes[index] =
                          control.value!;
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  // for ui
  Widget _measurements() {
    return ReactiveFormArray(
      formArrayName: 'measurements',
      builder: (context, formArray, child) {
        int length = formArray.controls.length;

        return ListView.builder(
          shrinkWrap: true,
          itemCount: length,
          itemBuilder: (context, index) {
            final FormGroup formGroup =
                formArray.control(index.toString()) as FormGroup;
            return _buildMeasurementNoteContainer(
              ValueKey(formGroup.value),
              formArray,
              // I'm not sure this is right, passing the array in when we only
              // really need the group other than delete
              index,
            );
          },
        );
      },
    );
  }

  List<Step> _buildSteps() {
    return <Step>[
      _measurementInfoStep(),
      _activeLevelsStep(),
      _notesStep(),
      _measurementsStep(),
    ];
  }

  List<AbstractControl<String>> _buildNotesInitial() {
    List<FormControl<String>> fcToReturn = [];
    // if notes are saved we need to build the actual ui otherwise it's empty
    if (measureSheetState.measurementInfo.notes.isNotEmpty) {
      for (final (note) in measureSheetState.measurementInfo.notes) {
        fcToReturn.add(FormControl(value: note));
      }
    }

    return fcToReturn;
  }

  List<FormGroup> _buildMeasurementsInitial() {
    List<FormGroup> fcToReturn = [];
    if (measureSheetState.measurementInfo.measurementRecords.isNotEmpty) {
      for (final (measurements)
          in measureSheetState.measurementInfo.measurementRecords) {
        fcToReturn.add(_measurementRecordFg(measurements));
      }
    }

    return fcToReturn;
  }

  FormGroup _measurementRecordFg(MeasurementRecord record) {
    return FormGroup({
      'openingNumber': FormControl<int>(value: record.openingNumber),
      'openingType': FormControl<String>(value: record.openingType),
      'level': FormControl<String>(value: record.level),
      'product': FormControl<String>(value: record.product),
      'spanDirection': FormControl<String>(value: record.spanDirection),
      'span': FormControl<String>(
          value: record.span, validators: [ _ValueMustBeDivisibleByPoint25()]),
      'nSpan': FormControl<String>(
          value: record.nSpan, validators: [ _ValueMustBeDivisibleByPoint25()]),
      'leftStack': FormControl<String>(value: record.stackLeft),
      'rightStack': FormControl<String>(value: record.stackRight),
      'buildOutTop': FormControl<String>(value: record.buildOutTop),
      'buildOutSides': FormControl<String>(value: record.buildOutSides),
      'buildOutBot': FormControl<String>(value: record.buildOutBot),
      'noteReference': FormControl<String>(value: record.noteReference),
    }, validators: [_IfAccordionStacksMustNotBeNullOrEmpty()]);
  }

  List<DropdownMenuItem<String>> _buildProductsDropdown(
    ProductOptions productOptions,
  ) {
    return productOptions.productsToMeasure().map((pTM) {
      return DropdownMenuItem(
        value: pTM,
          child: GestureDetector(child: Text(
            pTM, softWrap: true, overflow: TextOverflow.ellipsis,),
              onLongPress: () {
                print(pTM);
              })
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> _buildLevelsDropdown(
    ActiveLevels activeLevels,
  ) {
    return activeLevels.levelsForMeasure().map((pTM) {
      return DropdownMenuItem(value: pTM, child: Text(pTM));
    }).toList();
  }

  Widget _buildMeasurementNoteContainer(
    ValueKey uniqueKey,
    FormArray formArray,
    int index,
  ) {
    TextEditingController textController = TextEditingController
        .fromValue(TextEditingValue(text: '${index + 1}'));

    return PhysicalModel(
      color: ThemeData
          .light()
          .canvasColor,
      shadowColor: ThemeData
          .dark()
          .canvasColor,
      elevation: 4.0,
      child: Container(
        key: uniqueKey,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(5.0),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: ExpansionTile(
          // todo: add an error status flag based on validation errors????
          onExpansionChanged: (value) async {
            if (value) {
              _scrollToBottom();
            }
            if (!value) {
              // print('collapsed');
            }
          },
          leading: IconButton(
            onPressed: () {
              // for ui
              formArray.removeAt(index);
              // for data structure
              setState(() {
                var newList = measureSheetState.measurementInfo
                    .measurementRecords
                    .toList();
                newList.removeAt(index);
                measureSheetState.measurementInfo.measurementRecords = newList;
              });
            },
            icon: Icon(Icons.delete_sharp, color: Colors.red[900]),
          ),
          title:
          // header, shows up when collapsed
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              spacing: 6.0,
              children: [
                Flexible(
                  flex: 1,
                  child: ReactiveTextField<int>(
                    formControlName: '${index.toString()}.openingNumber',
                    controller: textController,
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Opening #',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (control) {
                      measureSheetState.measurementInfo
                          .measurementRecords[index]
                          .openingNumber = control.value;
                    },
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ReactiveTextField<String>(
                    formControlName: '${index.toString()}.openingType',
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Opening Type',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    onChanged: (control) {
                      measureSheetState
                          .measurementInfo
                          .measurementRecords[index]
                          .openingType =
                      control.value!;
                    },
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: ReactiveDropdownField<String>(
                    formControlName: '${index.toString()}.level',
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Level',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    items: _buildLevelsDropdown(measureSheetState.activeLevels),
                    onChanged: (control) {
                      measureSheetState
                          .measurementInfo
                          .measurementRecords[index]
                          .level =
                      control.value!;
                    },
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: ReactiveDropdownField<String>(
                    formControlName: '${index.toString()}.product',
                    isExpanded: true,
                    items: _buildProductsDropdown(
                      measureSheetState.productOptions,
                    ),
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Product',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    onChanged: (control) {
                      measureSheetState
                          .measurementInfo
                          .measurementRecords[index]
                          .product =
                      control.value!;
                    },
                  ),
                ),
              ],
            ),
          ),
          // rows that show after expanding
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 10.0,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child: ReactiveDropdownField<String>(
                      formControlName: '${index.toString()}.spanDirection',
                      isExpanded: true,
                      items: [
                        DropdownMenuItem(value: 'T/B',
                            child: Text('T/B', softWrap: true,
                              overflow: TextOverflow.ellipsis,)),
                        DropdownMenuItem(value: 'L/R',
                            child: Text('L/R', softWrap: true,
                              overflow: TextOverflow.ellipsis,)),
                      ],
                      decoration: InputDecoration(
                        helperText: '',
                        labelText: 'Direction',
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      onChanged: (control) {
                        measureSheetState
                            .measurementInfo
                            .measurementRecords[index]
                            .spanDirection =
                            control.value;
                      },
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: ReactiveTextField<String>(
                      formControlName: '${index.toString()}.span',
                      decoration: InputDecoration(
                        helperText: '',
                        labelText: 'Span',
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      onChanged: (control) {
                        measureSheetState
                            .measurementInfo
                            .measurementRecords[index]
                            .span =
                            control.value;
                      },
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: ReactiveTextField<String>(
                      formControlName: '${index.toString()}.nSpan',
                      decoration: InputDecoration(
                        helperText: '',
                        labelText: 'NSpan',
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      onChanged: (control) {
                        measureSheetState
                            .measurementInfo
                            .measurementRecords[index]
                            .nSpan =
                            control.value;
                      },
                    ),
                  ),
                  // todo: these cause an issue with spacing, not sure how to resolve
                  ReactiveValueListenableBuilder(
                      formControlName: '${index.toString()}.product',
                      builder: (context, control, child) {
                        return _addLeftStackOrEmptyContainer(
                            index, measureSheetState
                            .measurementInfo.measurementRecords[index].product);
                      }),
                  ReactiveValueListenableBuilder(
                      formControlName: '${index.toString()}.product',
                      builder: (context, control, child) {
                        return _addRightStackOrEmptyContainer(
                            index, measureSheetState
                            .measurementInfo.measurementRecords[index].product);
                      }),
                  Flexible(
                    flex: 1,
                    child: ReactiveTextField<String>(
                      formControlName: '${index.toString()}.buildOutTop',
                      decoration: InputDecoration(
                        helperText: '',
                        labelText: 'BO Top',
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      onChanged: (control) {
                        measureSheetState
                            .measurementInfo
                            .measurementRecords[index]
                            .buildOutTop =
                            control.value;
                      },
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: ReactiveTextField<String>(
                      formControlName: '${index.toString()}.buildOutSides',
                      decoration: InputDecoration(
                        helperText: '',
                        labelText: 'BO Sides',
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      onChanged: (control) {
                        measureSheetState
                            .measurementInfo
                            .measurementRecords[index]
                            .buildOutSides =
                            control.value;
                      },
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: ReactiveTextField<String>(
                      formControlName: '${index.toString()}.buildOutBot',
                      decoration: InputDecoration(
                        helperText: '',
                        labelText: 'BO Bot',
                        border: OutlineInputBorder(),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                      ),
                      onChanged: (control) {
                        measureSheetState
                            .measurementInfo
                            .measurementRecords[index]
                            .buildOutBot =
                            control.value;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 1,
                      child: ReactiveDropdownField<String>(
                        formControlName: '${index.toString()}.noteReference',
                        isExpanded: true,
                        items: _buildNotesDropdown(),
                        decoration: InputDecoration(
                          helperText: '',
                          labelText: 'Opening Note',
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (control) {
                          measureSheetState.measurementInfo
                              .measurementRecords[index].noteReference =
                              control.value;
                        },
                      )
                  ),
                ],),),
          ],
        ),
      ),
    );
  }

  void _scrollToBottom() {
    if (scrollController.hasClients) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        final double maxScrollExtent =
            scrollController.position.maxScrollExtent;
        await scrollController.animateTo(
          maxScrollExtent,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  List<DropdownMenuItem<String>> _buildNotesDropdown() {
    List<String> notes = measureSheetState.measurementInfo.notes.toList();

    return notes.map((note) {
      return DropdownMenuItem<String>(
        value: note,
        child: Text(note, softWrap: true,),
      );
    }).toList();
  }

  Widget _addLeftStackOrEmptyContainer(int index, String? product) {
    Container emptyContainer = Container();
    if (product == null) {
      return emptyContainer;
    }

    if (ProductOptions.requiresLeftRightStack(product)) {
      return Flexible(flex: 1, child: ReactiveDropdownField<String>(
        formControlName: '${index.toString()}.leftStack',
        isExpanded: true,
        items: _stackPercentageDropdownItems(),
        decoration: InputDecoration(
          helperText: '',
          labelText: 'Left Stack',
          border: OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        onChanged: (control) {
          measureSheetState
              .measurementInfo
              .measurementRecords[index]
              .stackLeft =
              control.value;

          // this is pretty bad but for now it works
          var fg = control.parent as FormGroup;
          var opposite = '';

          switch (control.value) {
            case '10':
              opposite = '90';
            case '20':
              opposite = '80';
            case '25':
              opposite = '75';
            case '30':
              opposite = '70';
            case '40':
              opposite = '60';
            case '50':
              opposite = '50';
            case '60':
              opposite = '40';
            case '70':
              opposite = '30';
            case '75':
              opposite = '25';
            case '80':
              opposite = '20';
            case '90':
              opposite = '10';
          }

          fg
              .control('rightStack')
              .value = opposite;

          measureSheetState.measurementInfo.measurementRecords[index]
              .stackRight = opposite;
        },
      ),
      );
    }

    return emptyContainer;
  }

  Widget _addRightStackOrEmptyContainer(int index, String? product) {
    Container emptyContainer = Container();
    if (product == null) {
      return emptyContainer;
    }

    if (ProductOptions.requiresLeftRightStack(product)) {
      return Flexible(flex: 1, child: ReactiveDropdownField<String>(
        formControlName: '${index.toString()}.rightStack',
        isExpanded: true,
        items: _stackPercentageDropdownItems(),
        decoration: InputDecoration(
          helperText: '',
          labelText: 'Right Stack',
          border: OutlineInputBorder(),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        onChanged: (control) {
          measureSheetState
              .measurementInfo
              .measurementRecords[index]
              .stackRight =
              control.value;

          // this is pretty bad but for now it works
          var fg = control.parent as FormGroup;
          var opposite = '';

          switch (control.value) {
            case '10':
              opposite = '90';
            case '20':
              opposite = '80';
            case '25':
              opposite = '75';
            case '30':
              opposite = '70';
            case '40':
              opposite = '60';
            case '50':
              opposite = '50';
            case '60':
              opposite = '40';
            case '70':
              opposite = '30';
            case '75':
              opposite = '25';
            case '80':
              opposite = '20';
            case '90':
              opposite = '10';
          }

          fg
              .control('leftStack')
              .value = opposite;

          measureSheetState.measurementInfo.measurementRecords[index]
              .stackLeft = opposite;
        },
      ),
      );
    }

    return emptyContainer;
  }

  List<DropdownMenuItem<String>> _stackPercentageDropdownItems() {
    return ['10', '20', '25', '30', '40', '50', '60', '70', '75', '80', '90']
        .map((percentage) {
      return DropdownMenuItem(value: percentage,
          child: Text('$percentage%', softWrap: true,
            overflow: TextOverflow.ellipsis,));
    }).toList();
  }
}

class _IfAccordionStacksMustNotBeNullOrEmpty extends Validator<dynamic> {

  _IfAccordionStacksMustNotBeNullOrEmpty() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    var measurementRecordFg = control as FormGroup;
    String? product = measurementRecordFg
        .control('product')
        .value;
    var lStack = measurementRecordFg
        .control('leftStack') as FormControl<String>;
    var rStack = measurementRecordFg
        .control('rightStack') as FormControl<String>;
    if (product == null || product.isEmpty) {
      return null;
    }
    if (ProductOptions.requiresLeftRightStack(product)) {
      if (lStack.value == null || lStack.value!.isEmpty) {
        lStack.setErrors({'Required': true});
      }
      if (rStack.value == null || rStack.value!.isEmpty) {
        rStack.setErrors({'Required': true});
      }
      // return {
      //   'Required': true
      // };
    }
    // if (lStack.value != null) {
    //   lStack.removeError('Required');
    // }
    // if (rStack.value != null) {
    //   rStack.removeError('Required');
    // }
    return null;
  }
}

class _ValueMustBeDivisibleByPoint25 extends Validator<String> {

  _ValueMustBeDivisibleByPoint25() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<String> control) {
    print('${control.value}');
    if (control.value == null || control.value!.isEmpty) {
      return null;
    }
    String value = control.value!;
    double? convertedValue = double.tryParse(value);

    if (convertedValue == null) {
      return {
        MeasureSheetFormConstants.valueMustBeDecimal: true
      };
    }

    bool hasNoRemainder = convertedValue % .25 == 0;

    // passes validation
    if (hasNoRemainder) {
      return null;
    }

    return {
      MeasureSheetFormConstants.valueMustBeToQuarterInch: true
    };
  }

}
