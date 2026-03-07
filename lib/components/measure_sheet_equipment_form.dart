import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../db/measure_sheet.dart';
import '../services/isar_service.dart';
import 'measure_sheet_constants.dart';

class MeasureSheetEquipmentForm extends StatefulWidget {
  final MeasureSheet measureSheet;
  final bool isCreate;

  const MeasureSheetEquipmentForm({
    super.key,
    required this.measureSheet,
    required this.isCreate,
  });

  @override
  State<StatefulWidget> createState() => _MeasureSheetEquipmentFormState();
}

class _MeasureSheetEquipmentFormState extends State<MeasureSheetEquipmentForm> {
  late MeasureSheet measureSheetState;
  int _index = 0;

  // measure information form
  late final FormGroup equipmentInfoForm = FormGroup({
    'ladders6Ft': FormControl<bool>(
      value: measureSheetState.laddersLifts.sixFt,
    ),
    'ladders8Ft': FormControl<bool>(
      value: measureSheetState.laddersLifts.eightFt,
    ),
    'ladders10Ft': FormControl<bool>(
      value: measureSheetState.laddersLifts.tenFt,
    ),
    'ladders12Ft': FormControl<bool>(
      value: measureSheetState.laddersLifts.twelveFt,
    ),
    'ladders24FtExten': FormControl<bool>(
      value: measureSheetState.laddersLifts.twentyFourFtExten,
    ),
    'ladders32FtExten': FormControl<bool>(
      value: measureSheetState.laddersLifts.thirtyTwoFtExten,
    ),
    'ladders45FtExten': FormControl<bool>(
      value: measureSheetState.laddersLifts.fourtyFiveFtExten,
    ),
    'littleGiant': FormControl<bool>(
      value: measureSheetState.laddersLifts.littleGiant,
    ),
    'standOff': FormControl<bool>(
      value: measureSheetState.laddersLifts.standOff,
    ),
    'walkingBoard': FormControl<bool>(
      value: measureSheetState.laddersLifts.walkingBoard,
    ),
    'scaffolding': FormControl<bool>(
      value: measureSheetState.laddersLifts.scaffolding,
    ),
    'boomLift': FormControl<bool>(
      value: measureSheetState.laddersLifts.boomLift,
    ),
    'ladderLift': FormControl<bool>(
      value: measureSheetState.laddersLifts.ladderLift,
    ),
    'toolsSdsSaw': FormControl<bool>(value: measureSheetState.tools.sdsSaw),
    'toolsSawzall': FormControl<bool>(value: measureSheetState.tools.sawzall),
    'toolsCircularSaw': FormControl<bool>(
      value: measureSheetState.tools.circularSaw,
    ),
    'toolsCombinationSaw': FormControl<bool>(
      value: measureSheetState.tools.combinationSaw,
    ),
    'fallProtection': FormControl<bool>(
      value: measureSheetState.safetyEquipment.fallProtection,
    ),
    'hardHat': FormControl<bool>(
      value: measureSheetState.safetyEquipment.hardHat,
    ),
    'gloves': FormControl<bool>(
      value: measureSheetState.safetyEquipment.gloves,
    ),
    'safetyGlasses': FormControl<bool>(
      value: measureSheetState.safetyEquipment.safetyGlasses,
    ),
    'pants': FormControl<bool>(value: measureSheetState.safetyEquipment.pants),
    'safetyVest': FormControl<bool>(
      value: measureSheetState.safetyEquipment.safetyVest,
    ),
  });

  @override
  void initState() {
    setState(() {
      measureSheetState = widget.measureSheet;
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

    return ListView(
      children: [
        Stepper(
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index -= 1;
              });
            }
          },
          onStepContinue: () {
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
      ],
    );
  }

  void _saveMeasureSheet() async {
    bool doSave = true;
    int indexToGoTo = 0;

    // check each step is valid before we try to save / create
    if (!equipmentInfoForm.valid) {
      equipmentInfoForm.markAllAsTouched();
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

  Step _laddersLiftsStep() {
    return Step(
      title: Text('Ladders / Lifts'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: equipmentInfoForm,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10.0,
              runSpacing: 16.0,
              children: <Widget>[

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('6ft Step'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'ladders6Ft',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.sixFt = control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('8ft Step'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'ladders8Ft',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.eightFt =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('10ft Step'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'ladders10Ft',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.tenFt = control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('12ft Step'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'ladders12Ft',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.twelveFt =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('24ft Exten.'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'ladders24FtExten',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.twentyFourFtExten =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('32ft Exten.'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'ladders32FtExten',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.thirtyTwoFtExten =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('45ft Exten.'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'ladders45FtExten',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.fourtyFiveFtExten =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Little Giant'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'littleGiant',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.littleGiant =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Scaffolding'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'scaffolding',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.scaffolding =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Walking Board'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'walkingBoard',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.walkingBoard =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Boom Lift'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'boomLift',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.boomLift =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Ladder Lift'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'ladderLift',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.ladderLift =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Stand-off'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'standOff',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.laddersLifts.standOff =
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

  Step _toolsStep() {
    return Step(
      title: Text('Tools'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: equipmentInfoForm,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10.0,
              runSpacing: 16.0,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('SDS Drill'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'toolsSdsSaw',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.tools.sdsSaw = control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Sawzall'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'toolsSawzall',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.tools.sawzall = control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Circular Saw'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'toolsCircularSaw',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.tools.circularSaw = control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Combination Saw'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'toolsCombinationSaw',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.tools.combinationSaw =
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

  Step _safetyEquipment() {
    return Step(
      title: Text('Safety Equipment'),
      content: Container(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ReactiveForm(
            formGroup: equipmentInfoForm,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 10.0,
              runSpacing: 16.0,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Fall Protection'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'fallProtection',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.safetyEquipment.fallProtection =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Hard Hat'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'hardHat',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.safetyEquipment.hardHat =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Gloves'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'gloves',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.safetyEquipment.gloves =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Pants'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'pants',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.safetyEquipment.pants =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Safety Glasses'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'safetyGlasses',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.safetyEquipment.safetyGlasses =
                              control.value!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Safety Vest'),
                    ReactiveSwitch.adaptive(
                      formControlName: 'safetyVest',
                      activeColor: Colors.red[900],
                      onChanged: (control) {
                        setState(() {
                          measureSheetState.safetyEquipment.safetyVest =
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

  List<Step> _buildSteps() {
    return <Step>[_laddersLiftsStep(), _toolsStep(), _safetyEquipment()];
  }
}
