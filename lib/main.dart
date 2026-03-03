import 'package:armor_measure_sheet/pages/measure_sheet_cards_page.dart';
import 'package:armor_measure_sheet/services/isar_service.dart';
import 'package:flutter/material.dart';

void main() async {
  await _setup();
  runApp(const MyApp());
}

Future<void> _setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await IsarService.setup();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Armor Measure Sheets',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: MeasureSheetCardsPage(),
    );
  }
}


