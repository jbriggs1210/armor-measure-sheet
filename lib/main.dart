import 'package:armor_measure_sheet/firebase_options.dart';
import 'package:armor_measure_sheet/pages/measure_sheet_cards_page.dart';
import 'package:armor_measure_sheet/services/isar_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {

  await _setup();
  runApp(const MyApp());
}

Future<void> _setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await IsarService.setup();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  var user = await signInWithMicrosoft();
  print(user.user!.email);
}

Future<UserCredential> signInWithMicrosoft() async {
  return await FirebaseAuth.instance.signInWithProvider(
      MicrosoftAuthProvider());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Armor Measure Sheets',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: MeasureSheetCardsPage(),
    );
  }
}


