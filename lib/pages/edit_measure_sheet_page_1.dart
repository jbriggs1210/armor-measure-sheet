import 'package:armor_measure_sheet/components/measure_sheet_general_info_form.dart';
import 'package:flutter/material.dart';

import '../db/measure_sheet.dart';

class EditMeasureSheetPage1 extends StatefulWidget {
  final MeasureSheet measureSheet;

  const EditMeasureSheetPage1({super.key, required this.measureSheet});

  @override
  State<StatefulWidget> createState() => _EditMeasureSheetPageState();
}

class _EditMeasureSheetPageState extends State<EditMeasureSheetPage1> {
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
          title: Text('Update General Information'),
          backgroundColor: Colors.red[900],
        ),
        body: MeasureSheetGeneralInfoForm(
          measureSheet: measureSheetState,
          isCreate: false,
        ),
      ),
    );
  }
}
