import 'package:armor_measure_sheet/db/measure_sheet.dart';
import 'package:flutter/material.dart';

import '../components/measure_sheet_general_info_form.dart';

class CreateMeasureSheetPage1 extends StatefulWidget {
  const CreateMeasureSheetPage1({super.key});

  @override
  State<StatefulWidget> createState() => _CreateMeasureSheetPageState();
}

class _CreateMeasureSheetPageState extends State<CreateMeasureSheetPage1> {
  late MeasureSheet measureSheetState;

  @override
  void initState() {
    measureSheetState = MeasureSheet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Create Measure Sheet'),
          backgroundColor: Colors.red[900],
        ),
        body: MeasureSheetGeneralInfoForm(
          measureSheet: measureSheetState,
          isCreate: true,
        ),
      ),
    );
  }
}
