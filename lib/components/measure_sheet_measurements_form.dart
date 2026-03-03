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

    // save notes because I don't know a better way to do this
    FormArray<String> notesArray =
        measurementInfoForm.controls['notes'] as FormArray<String>;
    List<String> notesToSave = notesArray.controls
        .map((elem) => elem.value!)
        .toList();
    measureSheetState.measurementInfo.notes = notesToSave;

    FormArray measurementsArray =
        measurementInfoForm.control('measurements')
            as FormArray<Map<String, dynamic>>;
    var fgs =
        measurementsArray.controls
            as List<AbstractControl<Map<String, dynamic>>>;
    var measurementsToAdd = fgs.map((fg) {
      MeasurementRecord record = MeasurementRecord();
      record.openingNumber = (fg as FormGroup).control('openingNumber').value;
      record.openingType = (fg).control('openingType').value;
      record.level = (fg).control('level').value;
      record.product = (fg).control('product').value;
      record.spanDirection = (fg).control('spanDirection').value;
      record.span = (fg).control('span').value;
      record.nSpan = (fg).control('nSpan').value;
      return record;
    }).toList();

    measureSheetState.measurementInfo.measurementRecords = measurementsToAdd;

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
      title: Row(
        children: [
          Text('Notes'),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              var formArray =
                  measurementInfoForm.control('notes') as FormArray<String>;
              formArray.add(FormControl<String>(value: ''));
            },
          ),
        ],
      ),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: measurementInfoForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10.0,
              children: <Widget>[_notes()],
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
                // for data
                setState(() {
                  measureSheetState.measurementInfo.measurementRecords = [
                    ...measureSheetState.measurementInfo.measurementRecords,
                    MeasurementRecord.defaults(),
                  ];
                });
                // for ui
                var formArray =
                    measurementInfoForm.control('measurements')
                        as FormArray<Map<String, dynamic>>;
                formArray.add(
                  _measurementRecordFg(MeasurementRecord.defaults()),
                );
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
        // all notes
        return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: length,
          itemBuilder: (context, index) {
            final FormControl<String> control =
                formArray.control(index.toString()) as FormControl<String>;
            final uniqueKey = ValueKey(control.value);

            // single note
            return Row(
              key: uniqueKey,
              children: [
                Expanded(
                  child: ReactiveTextField(
                    formControlName: index.toString(),
                    decoration: InputDecoration(labelText: 'Note'),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    formArray.removeAt(index);
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
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
      'span': FormControl<String>(value: record.span, validators: []),
      // todo: add 1/4 inch validator???
      'nSpan': FormControl<String>(value: record.nSpan, validators: []),
      // todo: add 1/4 inch validator???
      'buildOutTop': FormControl<String>(value: record.buildOutTop),
      'buildOutSides': FormControl<String>(value: record.buildOutSides),
      'buildOutBot': FormControl<String>(value: record.buildOutBot),
    });
  }

  List<DropdownMenuItem<String>> _buildProductsDropdown(
    ProductOptions productOptions,
  ) {
    return productOptions.productsToMeasure().map((pTM) {
      return DropdownMenuItem(value: pTM, child: Text(pTM));
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
    return Container(
      key: uniqueKey,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(5.0),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: ExpansionTile(
        leading: IconButton(
          onPressed: () => {formArray.removeAt(index)},
          icon: Icon(Icons.delete_sharp, color: Colors.red[900]),
        ),
        title: Row(
          spacing: 6.0,
          children: [
            Flexible(
              flex: 1,
              child: ReactiveTextField(
                formControlName: '${index.toString()}.openingNumber',
                decoration: InputDecoration(
                  labelText: 'Opening #',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Flexible(
              flex: 1,
              child: ReactiveTextField(
                formControlName: '${index.toString()}.openingType',
                decoration: InputDecoration(
                  labelText: 'Opening Type',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: ReactiveDropdownField<String>(
                formControlName: '${index.toString()}.level',
                decoration: InputDecoration(
                  labelText: 'Level',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                items: _buildLevelsDropdown(measureSheetState.activeLevels),
              ),
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              runSpacing: 10.0,
              spacing: 10.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                ReactiveDropdownField<String>(
                  formControlName: '${index.toString()}.product',
                  isExpanded: true,
                  items: _buildProductsDropdown(
                    measureSheetState.productOptions,
                  ),
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(400.0)),
                    labelText: 'Product',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (control) {},
                ),

                ReactiveDropdownField<String>(
                  formControlName: '${index.toString()}.spanDirection',
                  items: [
                    DropdownMenuItem(value: 'T/L', child: Text('T/L')),
                    DropdownMenuItem(value: 'R/B', child: Text('R/B')),
                  ],
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(250.0)),
                    labelText: 'Direction',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (control) {
                    setState(() {
                      if (measureSheetState
                          .measurementInfo
                          .measurementRecords
                          .isEmpty) {
                        measureSheetState.measurementInfo.measurementRecords
                            .add(MeasurementRecord.defaults());
                      }
                      measureSheetState
                              .measurementInfo
                              .measurementRecords[index]
                              .spanDirection =
                          control.value;
                    });
                  },
                ),
                ReactiveTextField(
                  formControlName: '${index.toString()}.span',
                  decoration: InputDecoration(
                    labelText: 'Span',
                    constraints: BoxConstraints.loose(Size.fromWidth(150.0)),
                    border: OutlineInputBorder(),
                  ),
                ),
                ReactiveTextField(
                  formControlName: '${index.toString()}.nSpan',
                  decoration: InputDecoration(
                    labelText: 'NSpan',
                    constraints: BoxConstraints.loose(Size.fromWidth(150.0)),
                    border: OutlineInputBorder(),
                  ),
                ),
                ReactiveTextField(
                  formControlName: '${index.toString()}.buildOutTop',
                  decoration: InputDecoration(
                    labelText: 'BO Top',
                    constraints: BoxConstraints.loose(Size.fromWidth(150.0)),
                    border: OutlineInputBorder(),
                  ),
                ),
                ReactiveTextField(
                  formControlName: '${index.toString()}.buildOutSides',
                  decoration: InputDecoration(
                    labelText: 'BO Sides',
                    constraints: BoxConstraints.loose(Size.fromWidth(150.0)),
                    border: OutlineInputBorder(),
                  ),
                ),
                ReactiveTextField(
                  formControlName: '${index.toString()}.buildOutBot',
                  decoration: InputDecoration(
                    labelText: 'BO Bot',
                    constraints: BoxConstraints.loose(Size.fromWidth(150.0)),
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
