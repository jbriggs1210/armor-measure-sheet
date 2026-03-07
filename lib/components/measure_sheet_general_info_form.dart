import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../db/measure_sheet.dart';
import '../services/isar_service.dart';
import 'measure_sheet_constants.dart';

class MeasureSheetGeneralInfoForm extends StatefulWidget {
  final MeasureSheet measureSheet;
  final bool isCreate;

  const MeasureSheetGeneralInfoForm({
    super.key,
    required this.measureSheet,
    required this.isCreate,
  });

  @override
  State<StatefulWidget> createState() => _MeasureSheetGeneralInfoFormState();
}

class _MeasureSheetGeneralInfoFormState
    extends State<MeasureSheetGeneralInfoForm> {
  late MeasureSheet measureSheetState;
  late ScrollController scrollController;
  int _index = 0;

  // customer information form
  late final FormGroup customerInfoForm = FormGroup({
    'jobNumber': FormControl<String>(
      value: measureSheetState.jobNumber,
      disabled: _doDisableJobNumber(),
      validators: [Validators.required],
    ),
    'salesRep': FormControl<String>(
      value: measureSheetState.salesRep,
      validators: [Validators.required],
    ),
    'jobDate': FormControl<DateTime>(
      value: measureSheetState.jobDate ?? DateTime.now(),
    ),
    'customerName': FormControl<String>(value: measureSheetState.customerName),
    'streetNumber': FormControl<String>(value: measureSheetState.streetNumber),
    'streetName': FormControl<String>(value: measureSheetState.streetName),
    'lotNumber': FormControl<String>(value: measureSheetState.lotNumber),
    'cityTown': FormControl<String>(value: measureSheetState.cityTown),
    'state': FormControl<String>(value: measureSheetState.state),
    'zipCode': FormControl<String>(value: measureSheetState.zipCode),
    'plantation': FormControl<String>(value: measureSheetState.plantation),
    'mobile1': FormControl<String>(value: measureSheetState.mobile1),
    'mobile2': FormControl<String>(value: measureSheetState.mobile2),
    'homePhone': FormControl<String>(value: measureSheetState.homePhone),
    'builderSuperName': FormControl<String>(
      value: measureSheetState.builderSuperName,
    ),
    'builderSuperPhone': FormControl<String>(
      value: measureSheetState.builderSuperPhone,
    ),
  });

  late final FormGroup homeDetailsForm = FormGroup(({
    'tentativeInstallDate': FormControl<DateTime>(
      value: measureSheetState.tentativeInstallDate,
    ),
    'readyForInstall': FormControl<bool>(
      value: measureSheetState.readyForInstall,
    ),
  }));

  late final FormGroup sidingForm = FormGroup(
    {
      'hardie': FormControl<bool>(
        value: measureSheetState.sidingOptions.hardie,
      ),
      'stucco': FormControl<bool>(
        value: measureSheetState.sidingOptions.stucco,
      ),
      'vinyl': FormControl<bool>(value: measureSheetState.sidingOptions.vinyl),
      'stone': FormControl<bool>(value: measureSheetState.sidingOptions.stone),
      'brick': FormControl<bool>(value: measureSheetState.sidingOptions.brick),
      'concrete': FormControl<bool>(
        value: measureSheetState.sidingOptions.concrete,
      ),
      'other': FormControl<bool>(value: measureSheetState.sidingOptions.other),
      'otherSpecifics': FormControl<String>(
        value: measureSheetState.sidingOptions.otherSpecifics,
        disabled: false,
      ),
      'color': FormControl<String>(
        value: measureSheetState.sidingOptions.color,
      ),
    },
    validators: [_SidingOtherSpecificsValidator()],
  );

  late final FormGroup trimForm = FormGroup({
    'topAndBottom': FormControl<bool>(
      value: measureSheetState.trimOptions.topAndBottom,
    ),
    'allAround': FormControl<bool>(
      value: measureSheetState.trimOptions.allAround,
    ),
    'headerStickout': FormControl<bool>(
      value: measureSheetState.trimOptions.headerStickout,
    ),
    'headerFlush': FormControl<bool>(
      value: measureSheetState.trimOptions.headerFlush,
    ),
    'sillStickout': FormControl<bool>(
      value: measureSheetState.trimOptions.sillStickout,
    ),
    'sillFlush': FormControl<bool>(
      value: measureSheetState.trimOptions.sillFlush,
    ),
    'none': FormControl<bool>(value: measureSheetState.trimOptions.none),
    'color': FormControl<String>(value: measureSheetState.trimOptions.color),
  });

  late FormGroup doorDetailsForm = FormGroup({
    'roomUnderDoor': FormControl<bool>(
      value: measureSheetState.doorDetails.roomUnderDoor,
    ),
    'concreteFloor': FormControl<bool>(
      value: measureSheetState.doorDetails.concreteFloor,
    ),
    'brickStoneTileWithSandUnder': FormControl<bool>(
      value: measureSheetState.doorDetails.brickStoneTileWithSandUnder,
    ),
    'sillInPlace': FormControl<bool>(
      value: measureSheetState.doorDetails.sillInPlace,
    ),
    'brickStoneTileWithConcreteUnder': FormControl<bool>(
      value: measureSheetState.doorDetails.brickStoneTileWithConcreteUnder,
    ),
  });

  late final FormGroup productOptionsForm = FormGroup(
    {
      'paintBrand': FormControl<String>(
        value: measureSheetState.productOptions.paintBrand,
      ),
      'otherBrandSpecify': FormControl<String?>(
        value: measureSheetState.productOptions.otherBrandSpecify,
      ),
      'paintCode': FormControl<String?>(
        value: measureSheetState.productOptions.paintCode,
      ),
      'osb': FormControl<bool>(value: measureSheetState.productOptions.osb),
      'galv': FormControl<bool>(value: measureSheetState.productOptions.galv),
      'alum': FormControl<bool>(value: measureSheetState.productOptions.alum),
      'fabric': FormControl<bool>(
        value: measureSheetState.productOptions.fabric,
      ),
      'accordions': FormControl<bool>(
        value: measureSheetState.productOptions.accordions,
      ),
      'rolldown': FormControl<bool>(
        value: measureSheetState.productOptions.rolldown,
      ),
      'clearPanels': FormControl<bool>(
          value: measureSheetState.productOptions.clearPanels),
      'screenUnder': FormControl<bool>(
        value: measureSheetState.productOptions.screenUnder,
      ),
      'retScreen': FormControl<bool>(
        value: measureSheetState.productOptions.retractableScreen,
      ),
      'poolEnclosure': FormControl<bool>(
        value: measureSheetState.productOptions.poolEnclosure,
      ),
      'paintedCaps': FormControl<bool>(
        value: measureSheetState.productOptions.paintedCaps,
      ),
      'bahArticulating': FormControl<bool>(
        value: measureSheetState.productOptions.bahArticulating,
      ),
      'decoBahama': FormControl<bool>(
        value: measureSheetState.productOptions.decoBahama,
      ),
      'decoColonial': FormControl<bool>(
        value: measureSheetState.productOptions.decoColonial,
      ),
      'ratedBahama2Inch': FormControl<bool>(
        value: measureSheetState.productOptions.ratedBahama2Inch,
      ), 'ratedBahama4Inch': FormControl<bool>(
      value: measureSheetState.productOptions.ratedBahama4Inch,
    ), 'ratedColonialLouvered': FormControl<bool>(
      value: measureSheetState.productOptions.ratedColonialLouvered,
    ), 'ratedColonialBoardAndBatten': FormControl<bool>(
      value: measureSheetState.productOptions.ratedColonialBoardAndBatten,
    ),
      'composite': FormControl<bool>(
        value: measureSheetState.productOptions.composite,
      ),
      'compositeSpecifics': FormControl<String>(
        value: measureSheetState.productOptions.compositeSpecifics,
      ),
      'cutout': FormControl<String>(
        value: measureSheetState.productOptions.cutout,
      ),
      'directMount': FormControl<bool>(
        value: measureSheetState.productOptions.directMount,
      ),
      'armorTrack': FormControl<bool>(
        value: measureSheetState.productOptions.armorTrack,
      ),
      'hHeader': FormControl<bool>(
        value: measureSheetState.productOptions.hHeader,
      ),
      'flatTrack': FormControl<bool>(
        value: measureSheetState.productOptions.flatTrack,
      ),
    },
    validators: [_ProductOptionsValidator()],
  );

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
    scrollController.dispose();
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
        currentStep: _index,
        controller: scrollController,
        // physics: NeverScrollableScrollPhysics(),
        onStepCancel: () {
          if (_index > 0) {
            setState(() {
              _index -= 1;
            });
          }
        },
        onStepContinue: () {
          // validate for customer information
          if (_index == 0) {
            if (!customerInfoForm.valid) {
              _scrollToTop();
              // need to check job number is unique
              customerInfoForm.markAllAsTouched();
              if (measureSheetState.id! < 1) {
                var jobNumberToCheck = customerInfoForm
                    .control('jobNumber')
                    .value;
                if (IsarService.isarDatabase.measureSheets
                    .filter()
                    .jobNumberEqualTo(jobNumberToCheck)
                    .isEmptySync()) {
                  return;
                } else {
                  customerInfoForm.control('jobNumber').setErrors({
                    'jobNumberExists': true,
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        SnackbarConstants.snackbarCustomerInformationErrors,
                      ),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                }
              }

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    SnackbarConstants.snackbarCustomerInformationErrors,
                  ),
                  behavior: SnackBarBehavior.floating,
                ),
              );
              setState(() {
                _index = 0;
              });
              return;
            }
          }

          // validate for siding
          if (_index == 2) {
            if (!sidingForm.valid) {
              sidingForm.markAllAsTouched();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(SnackbarConstants.snackbarSidingErrors),
                  behavior: SnackBarBehavior.floating,
                ),
              );
              return;
            }
          }

          // validate for products
          if (_index == 5) {
            if (!productOptionsForm.valid) {
              productOptionsForm.markAllAsTouched();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    SnackbarConstants.snackbarProductErrors,
                  ),
                  behavior: SnackBarBehavior.floating,
                ),
              );
              return;
            }
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
            _scrollToBottom();
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
    if (!customerInfoForm.valid) {
      customerInfoForm.markAllAsTouched();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            SnackbarConstants.snackbarCustomerInformationErrors,
          ),
          behavior: SnackBarBehavior.floating,
        ),
      );
      doSave = false;
      indexToGoTo = 0;
    }

    if (!sidingForm.valid) {
      sidingForm.markAllAsTouched();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(SnackbarConstants.snackbarSidingErrors),
          behavior: SnackBarBehavior.floating,
        ),
      );
      doSave = false;
      indexToGoTo = 2;
    }

    if (!productOptionsForm.valid) {
      productOptionsForm.markAllAsTouched();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(SnackbarConstants.snackbarProductErrors),
          behavior: SnackBarBehavior.floating,
        ),
      );
      doSave = false;
      indexToGoTo = 5;
    }

    if (!doSave) {
      setState(() {
        _index = indexToGoTo;
      });
      return;
    }

    // doSave
    if (measureSheetState.id! < 1) {
      var jobNumberToCheck = customerInfoForm.control('jobNumber').value;
      if (IsarService.isarDatabase.measureSheets
          .filter()
          .jobNumberEqualTo(jobNumberToCheck)
          .isEmptySync()) {
        await IsarService.isarDatabase.writeTxn(
          () => IsarService.isarDatabase.measureSheets.put(measureSheetState),
        );
        if (mounted) {
          Navigator.of(context).pop();
        }
      } else {
        customerInfoForm.control('jobNumber').setErrors({
          'jobNumberExists': true,
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              SnackbarConstants.snackbarJobNumberAlreadyExists,
            ),
          ),
        );
        setState(() {
          _index = 0;
          _scrollToTop();
        });
      }
    } else {
      await IsarService.isarDatabase.writeTxn(
        () => IsarService.isarDatabase.measureSheets.put(measureSheetState),
      );
      if (mounted) {
        Navigator.of(context).pop();
      }
    }
  }

  bool _doDisableJobNumber() {
    return !widget.isCreate;
  }

  Step _customerInformationStep() {
    return Step(
      title: const Text('Job and Customer Info'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: customerInfoForm,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10.0,
              runSpacing: 16.0,
              children: <Widget>[
                ReactiveTextField<String>(
                  formControlName: 'jobNumber',
                  maxLength: 10,
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(250.0)),
                    labelText: 'Job Number',
                    border: OutlineInputBorder(),
                    counterText: '',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  validationMessages: {
                    ValidationMessage.required: (_) =>
                    FormConstants.jobNumberIsRequired,
                    'jobNumberExists': (_) =>
                    FormConstants.jobNumberAlreadyExists,
                  },
                  keyboardType: TextInputType.text,
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.jobNumber = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'salesRep',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(500.0)),
                    labelText: 'Sales Rep',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  validationMessages: {
                    ValidationMessage.required: (_) =>
                    FormConstants.salesRepIsRequired,
                  },
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.salesRep = control.value;
                    }),
                  },
                ),
                ReactiveStatusListenableBuilder(
                  formControlName: 'jobDate',
                  builder: (context, control, child) {
                    measureSheetState.jobDate = control.value as DateTime?;
                    return ReactiveDateTimePicker(
                      formControlName: 'jobDate',
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
                ReactiveTextField<String>(
                  formControlName: 'customerName',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(500.0)),
                    labelText: 'Customer Name',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.customerName = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'streetNumber',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(150.0)),
                    labelText: 'Street Number',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.streetNumber = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'lotNumber',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(150.0)),
                    labelText: 'Lot Number',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.lotNumber = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'streetName',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(600.0)),
                    labelText: 'Street Name',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.streetName = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'cityTown',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(400.0)),
                    labelText: 'City/Town',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.cityTown = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'state',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(200.0)),
                    labelText: 'State',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.state = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'zipCode',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(200.0)),
                    labelText: 'Zip Code',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.zipCode = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'plantation',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(400.0)),
                    labelText: 'Plantation',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.plantation = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'mobile1',
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(250.0)),
                    labelText: 'Mobile 1',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.mobile1 = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'mobile2',
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(250.0)),
                    labelText: 'Mobile 2',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.mobile2 = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'homePhone',
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(250.0)),
                    labelText: 'Home Phone',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.homePhone = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'builderSuperName',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(400.0)),
                    labelText: 'Builder/Super Name',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.builderSuperName = control.value;
                    }),
                  },
                ),
                ReactiveTextField<String>(
                  formControlName: 'builderSuperPhone',
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(250.0)),
                    labelText: 'Builder/Super Phone',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.builderSuperPhone = control.value;
                    }),
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Step _homeDetailsStep() {
    return Step(
      title: Text('Home Details'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: homeDetailsForm,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10.0,
              runSpacing: 16.0,
              children: <Widget>[
                ReactiveStatusListenableBuilder(
                  formControlName: 'tentativeInstallDate',
                  builder: (context, control, child) {
                    measureSheetState.tentativeInstallDate =
                        control.value as DateTime?;
                    return ReactiveDateTimePicker(
                      formControlName: 'tentativeInstallDate',
                      valueAccessor: DateTimeValueAccessor(
                        dateTimeFormat: DateFormat('MM/dd/yyyy'),
                      ),
                      decoration: InputDecoration(
                        constraints: BoxConstraints.loose(
                          Size.fromWidth(250.0),
                        ),
                        labelText: 'Tentative Install Date',
                        border: OutlineInputBorder(),
                        helperText: '',
                        suffixIcon: Icon(Icons.calendar_today),
                      ),
                    );
                  },
                ),
                Row(
                  children: [
                    Text('Ready For Install'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'readyForInstall',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        measureSheetState.readyForInstall = control.value!;
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

  Step _sidingStep() {
    return Step(
      title: Text('Siding'),
      content: ReactiveForm(
        formGroup: sidingForm,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Hardie'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'hardie',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        measureSheetState.sidingOptions.hardie = control.value!;
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Stucco'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'stucco',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.sidingOptions.stucco =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Vinyl'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'vinyl',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.sidingOptions.vinyl =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Stone'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'stone',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.sidingOptions.stone =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Brick'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'brick',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.sidingOptions.brick =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Concrete'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'concrete',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.sidingOptions.concrete =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Other'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'other',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.sidingOptions.other =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            ReactiveValueListenableBuilder(
              formControlName: 'other',
              builder: (context, control, child) {
                if (control.value == true) {
                  var otherSpecifics = ReactiveTextField<String>(
                    formControlName: 'otherSpecifics',
                    decoration: InputDecoration(
                      constraints: BoxConstraints.loose(Size.fromWidth(250.0)),
                      labelText: 'Other Specifics',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    validationMessages: {
                      ValidationMessage.required: (_) =>
                      FormConstants
                              .sidingOtherSpecificsRequired,
                    },
                    onChanged: (control) => {
                      setState(() {
                        measureSheetState.sidingOptions.otherSpecifics =
                            control.value;
                      }),
                    },
                  );

                  otherSpecifics.formControl?.markAsTouched();

                  return otherSpecifics;
                } else {
                  return Container();
                }
              },
            ),
            Padding(padding: EdgeInsets.only(top: 4.0)),
            ReactiveTextField<String>(
              formControlName: 'color',
              decoration: InputDecoration(
                constraints: BoxConstraints.loose(Size.fromWidth(250.0)),
                labelText: 'Color',
                border: OutlineInputBorder(),
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
              onChanged: (control) => {
                setState(() {
                  measureSheetState.sidingOptions.color = control.value;
                }),
              },
            ),
          ],
        ),
      ),
    );
  }

  Step _trimStep() {
    return Step(
      title: Text('Trim'),
      content: ReactiveForm(
        formGroup: trimForm,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              runAlignment: WrapAlignment.start,
              spacing: 20.0,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Top and Bottom'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'topAndBottom',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.trimOptions.topAndBottom =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('All Around'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'allAround',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.trimOptions.allAround =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Header Stick-out'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'headerStickout',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.trimOptions.headerStickout =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Header Flush'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'headerFlush',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.trimOptions.headerFlush =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Sill Stick-out'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'sillStickout',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.trimOptions.sillStickout =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Sill Flush (No Sill)'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'sillFlush',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.trimOptions.sillFlush =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                ReactiveTextField<String>(
                  formControlName: 'color',
                  decoration: InputDecoration(
                    constraints: BoxConstraints.loose(Size.fromWidth(250.0)),
                    labelText: 'Color',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) => {
                    setState(() {
                      measureSheetState.trimOptions.color = control.value;
                    }),
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Step _doorDetails() {
    return Step(
      title: Text('Door Details'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: doorDetailsForm,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10.0,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Concrete Floor'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'concreteFloor',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        measureSheetState.doorDetails.concreteFloor =
                            control.value!;
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Brick/Stone/Tile With Sand Under'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'brickStoneTileWithSandUnder',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        measureSheetState
                                .doorDetails
                                .brickStoneTileWithSandUnder =
                            control.value!;
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Sill in Place'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'sillInPlace',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        measureSheetState.doorDetails.sillInPlace =
                            control.value!;
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Brick/Stone/Tile With Concrete Under'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'brickStoneTileWithConcreteUnder',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        measureSheetState
                                .doorDetails
                                .brickStoneTileWithConcreteUnder =
                            control.value!;
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Room Under Door'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'roomUnderDoor',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        measureSheetState.doorDetails.roomUnderDoor =
                            control.value!;
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

  Step _productsStep() {
    return Step(
      title: Text('Products'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: productOptionsForm,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10.0,
              runSpacing: 16.0,
              children: <Widget>[
                Row(
                  spacing: 10.0,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: ReactiveDropdownField<String>(
                        formControlName: 'paintBrand',
                        items: [
                          DropdownMenuItem(
                            value: 'Sherwin Williams',
                            child: Text('Sherwin Williams'),
                          ),
                          DropdownMenuItem(value: 'PPG', child: Text('PPG')),
                          DropdownMenuItem(
                            value: 'Benjamin Moore',
                            child: Text('Benjamin Moore'),
                          ),
                          DropdownMenuItem(value: 'Other', child: Text(
                              'Other')),
                        ],
                        decoration: InputDecoration(
                          constraints: BoxConstraints.loose(Size.fromWidth(
                              250.0)),
                          labelText: 'Paint Brand',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (control) {
                          setState(() {
                            measureSheetState.productOptions.paintBrand =
                          control.value!;
                          });
                        },
                      ),
                    ),
                    ReactiveValueListenableBuilder(
                      formControlName: 'paintBrand',
                      builder: (context, control, child) {
                        if (control.value == 'Other') {
                          var otherBrand = ReactiveTextField<String?>(
                            formControlName: 'otherBrandSpecify',
                            decoration: InputDecoration(
                              constraints: BoxConstraints.loose(
                                Size.fromWidth(250.0),
                              ),
                              labelText: 'Other (Specify)',
                              border: OutlineInputBorder(),
                              floatingLabelBehavior: FloatingLabelBehavior
                                  .always,
                            ),
                            validationMessages: {
                              ValidationMessage.required: (_) =>
                              FormConstants
                                  .productsOtherBrandRequired,
                            },
                            onChanged: (control) =>
                            {
                              setState(() {
                                measureSheetState.productOptions
                                    .otherBrandSpecify =
                                    control.value;
                              }),
                            },
                          );

                          otherBrand.formControl?.markAsTouched();

                          return Flexible(flex: 1, child: otherBrand);
                        } else {
                          return Container();
                        }
                      },
                    ),
                    Flexible(
                      flex: 1,
                      child: ReactiveTextField<String?>(
                        formControlName: 'paintCode',
                        decoration: InputDecoration(
                          constraints: BoxConstraints.loose(Size.fromWidth(
                              250.0)),
                          labelText: 'Paint Code',
                          border: OutlineInputBorder(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                          FormConstants.productsOtherBrandRequired,
                        },
                        onChanged: (control) =>
                        {
                          setState(() {
                            measureSheetState.productOptions.paintCode =
                                control.value;
                          }),
                        },
                      ),
                    ),
                  ],),
                Wrap(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('OSB (O)'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'osb',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.osb =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Galv (G)'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'galv',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.galv =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Alum (A)'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'alum',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.alum =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Fabric (F)'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'fabric',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.fabric =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Accordions (Ac)'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'accordions',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.accordions =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Rolldown (R)'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'rolldown',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.rolldown =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Clear Panels'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'clearPanels',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.clearPanels =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Screen Under'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'screenUnder',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.screenUnder =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Retractable Screen'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'retScreen',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState
                                      .productOptions
                                      .retractableScreen =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Pool Enclosure'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'poolEnclosure',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.poolEnclosure =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Painted Caps'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'paintedCaps',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.paintedCaps =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Bah Articulating (BH)'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'bahArticulating',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.bahArticulating =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Deco Bahama'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'decoBahama',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.decoBahama =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Deco Colonial'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'decoColonial',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.decoColonial =
                              control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Rated Bahama 2"'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'ratedBahama2Inch',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.ratedBahama2Inch =
                              control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Rated Bahama 4"'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'ratedBahama4Inch',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.ratedBahama4Inch =
                              control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Rated Colonial Louvered'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'ratedColonialLouvered',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.ratedColonialLouvered =
                              control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Rated Colonial B&B'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'ratedColonialBoardAndBatten',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.ratedColonialBoardAndBatten =
                              control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Composite'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'composite',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.composite =
                                  control.value!;
                            });
                          },
                        ),
                        ReactiveValueListenableBuilder(
                          formControlName: 'composite',
                          builder: (context, control, child) {
                            if (control.value == true) {
                              var compositeSpecifics =
                                  ReactiveDropdownField<String>(
                                    formControlName: 'compositeSpecifics',
                                    items: [
                                      DropdownMenuItem(
                                        value: 'N/A',
                                        child: Text('N/A'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Board & Batten',
                                        child: Text('Board & Batten (BB)'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Louver',
                                        child: Text('Louver (CL)'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Raised Panel',
                                        child: Text('Raised Panel (CR)'),
                                      ),
                                      DropdownMenuItem(
                                        value: 'Shaker',
                                        child: Text('Shaker (CS)'),
                                      ),
                                    ],
                                    decoration: InputDecoration(
                                      constraints: BoxConstraints.loose(
                                        Size.fromWidth(250.0),
                                      ),
                                      labelText: '(Specify)',
                                      border: OutlineInputBorder(),
                                    ),
                                    onChanged: (control) {
                                      setState(() {
                                        measureSheetState
                                                .productOptions
                                                .compositeSpecifics =
                                            control.value;
                                      });
                                    },
                                  );

                              compositeSpecifics.formControl
                                  ?.markAllAsTouched();
                              return compositeSpecifics;
                            } else {
                              return Container();
                            }
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Direct Mount (DM)'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'directMount',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.directMount =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Armor Track (AT)'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'armorTrack',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.armorTrack =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('"H" Header'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'hHeader',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.hHeader =
                                  control.value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Flat Track'),
                        ReactiveSwitch.adaptive(
                          formControlName: 'flatTrack',
                          activeColor: Colors.red[900],
                          onChanged: (control) {
                            setState(() {
                              measureSheetState.productOptions.flatTrack =
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

  List<Step> _buildSteps() {
    return <Step>[
      _customerInformationStep(),
      _homeDetailsStep(),
      _sidingStep(),
      _trimStep(),
      _doorDetails(),
      _productsStep(),
    ];
  }

  void _scrollToTop() async {
    if (scrollController.hasClients) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await scrollController.animateTo(
          0.0,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      });
    }
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
}

// FormGroup level validators
class _SidingOtherSpecificsValidator extends Validator<dynamic> {
  _SidingOtherSpecificsValidator() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    var fg = control is FormGroup ? control : null;
    var otherCheckbox = fg?.control('other') as FormControl<bool>;
    var otherSpecificsTextField =
        fg?.control('otherSpecifics') as FormControl<String>;

    if (otherCheckbox.value == true) {
      if (otherSpecificsTextField.value == null ||
          otherSpecificsTextField.value.toString().trim().isEmpty) {
        otherSpecificsTextField.setErrors({ValidationMessage.required: true});
        return {
          ValidationMessage.required: 'This error message doesn\'t matter.',
        };
      }
    }
    // remove error if validation should be turned off
    if (otherSpecificsTextField.errors[ValidationMessage.required] == true) {
      otherSpecificsTextField.removeError(
        ValidationMessage.required,
        markAsDirty: true,
      );
    }
    return null;
  }
}

class _ProductOptionsValidator extends Validator<dynamic> {
  _ProductOptionsValidator() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    var fg = control is FormGroup ? control : null;
    var paintBrand = fg?.control('paintBrand') as FormControl<String>;
    var otherBrandSpecify =
        fg?.control('otherBrandSpecify') as FormControl<String?>;
    var paintCode = fg?.control('paintCode') as FormControl<String?>;
    var composite = fg?.control('composite') as FormControl<bool>;
    var compositeSpecifics =
        fg?.control('compositeSpecifics') as FormControl<String>;

    if (paintBrand.value != null && paintBrand.value!.isNotEmpty) {
      if (paintBrand.value == 'Other') {
        if (otherBrandSpecify.value == null ||
            otherBrandSpecify.value.toString().trim().isEmpty) {
          otherBrandSpecify.setErrors({ValidationMessage.required: true});
          return {ValidationMessage.required: true};
        }
      }
      if (otherBrandSpecify.errors[ValidationMessage.required] == true) {
        otherBrandSpecify.removeError(
          ValidationMessage.required,
          markAsDirty: true,
        );
      }
      if (paintCode.value == null ||
          paintCode.value.toString().trim().isEmpty) {
        paintCode.setErrors({ValidationMessage.required: true});
        return {ValidationMessage.required: true};
      }
      if (paintCode.errors[ValidationMessage.required] == true) {
        paintCode.removeError(ValidationMessage.required, markAsDirty: true);
      }
    }
    if (composite.value == true) {
      if (compositeSpecifics.value == null) {
        compositeSpecifics.setErrors({ValidationMessage.required: true});
      }
      // return {
      //   ValidationMessage.required: 'This error message doesn\'t matter.',
      // };
    }

    if (compositeSpecifics.errors[ValidationMessage.required] == true) {
      compositeSpecifics.removeError(
        ValidationMessage.required,
        markAsDirty: true,
      );
    }

    return null;
  }
}
