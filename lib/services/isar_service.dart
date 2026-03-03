import 'package:armor_measure_sheet/db/measure_sheet.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {

  static late final Isar isarDatabase;

  static Future<void> setup() async {
    final dir = await getApplicationDocumentsDirectory();
    isarDatabase = await Isar.open([MeasureSheetSchema], directory: dir.path);
  }
}