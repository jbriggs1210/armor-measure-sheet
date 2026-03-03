import 'package:flutter/material.dart';

import '../components/measure_sheet_measurements_form.dart';
import '../db/measure_sheet.dart';

class EditMeasureSheetPage3 extends StatefulWidget {
  final MeasureSheet measureSheet;

  const EditMeasureSheetPage3({super.key, required this.measureSheet});

  @override
  State<StatefulWidget> createState() => _EditMeasureSheetPageState();
}

class _EditMeasureSheetPageState extends State<EditMeasureSheetPage3> {
  late MeasureSheet measureSheetState;

  @override
  void initState() {
    setState(() {
      measureSheetState = widget.measureSheet;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Update Measure Information'),
          backgroundColor: Colors.red[900],
        ),
        body: MeasureSheetMeasurementsForm(measureSheet: measureSheetState),
      ),
    );
  }
}
