import 'dart:io';

import 'package:armor_measure_sheet/db/measure_sheet.dart';
import 'package:armor_measure_sheet/pages/edit_measure_sheet_page_1.dart';
import 'package:armor_measure_sheet/pages/edit_measure_sheet_page_2.dart';
import 'package:armor_measure_sheet/pages/edit_measure_sheet_page_3.dart';
import 'package:armor_measure_sheet/services/isar_service.dart';
import 'package:armor_measure_sheet/services/pdf_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';

class MeasureSheetCard extends StatelessWidget {

  final MeasureSheet measureSheet;

  const MeasureSheetCard({super.key, required this.measureSheet});

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: ThemeData
          .light()
          .cardColor,
      shadowColor: ThemeData
          .dark()
          .cardColor,
      elevation: 2.0,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.topLeft,
                child: IconButton(
                  tooltip: 'Delete',
                  alignment: AlignmentGeometry.topLeft,
                  onPressed: () async {
                    bool? isConfirmed = await showDialog<bool>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Delete Measure Sheet'),
                          content: const Text(
                            style: TextStyle(fontWeight: FontWeight.w800),
                            'Are you sure you want to delete?  You will permanently lose all data for this sheet!',
                          ),
                          actions: [
                            ElevatedButton.icon(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              icon: Icon(Icons.arrow_back_ios_sharp),
                              label: const Text('No'),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              icon: Icon(Icons.delete_sharp),
                              label: const Text('Yes'),
                            ),
                          ],
                        );
                      },
                    );

                    if (isConfirmed != null && isConfirmed) {
                      _delete();
                    }
                  },
                  icon: Icon(Icons.delete_sharp, color: Colors.red[900]),
                ),
              ),
              ListTile(
                title: Text(
                  'Measure Sheet: ${measureSheet.jobNumber}',
                  style: TextStyle(fontSize: 14.0),
                ),
                subtitle: Text(
                  measureSheet.salesRep.toString(),
                  style: TextStyle(color: Colors.black, fontSize: 12.0),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Align(
                    alignment: AlignmentGeometry.bottomCenter,
                    child: Row(
                      spacing: 4,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          tooltip: 'General Information',
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditMeasureSheetPage1(
                                        measureSheet: measureSheet),
                              ),
                            );
                          },
                          icon: Icon(Icons.home_sharp),
                        ),
                        IconButton(
                          tooltip: 'Equipment Information',
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditMeasureSheetPage2(
                                        measureSheet: measureSheet),
                              ),
                            );
                          },
                          icon: Icon(Icons.construction_sharp),
                        ),
                        IconButton(
                          tooltip: 'Measurement Information',
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditMeasureSheetPage3(
                                        measureSheet: measureSheet),
                              ),
                            );
                          },
                          icon: Icon(Icons.square_foot_sharp),
                        ),
                        IconButton(
                          tooltip: 'Create/Save PDF',
                          onPressed: () async {
                            var pdfService = PdfService();
                            var pdf = await pdfService.createDocument(
                              measureSheet.id!.toInt(),
                            );
                            var file = await pdfService.andWriteToFile(
                              pdf,
                              measureSheet.jobNumber!,
                            );
                            var fileName =
                                '${measureSheet.jobNumber}_${DateTime
                                .now()
                                .millisecondsSinceEpoch}.pdf';
                            if (context.mounted) {
                              await _saveFileToDirectory(
                                  context, file, fileName);
                            }
                          },
                          icon: Icon(Icons.picture_as_pdf_sharp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _delete() async {
    final id = measureSheet.id;
    await IsarService.isarDatabase.writeTxn(
      () => IsarService.isarDatabase.measureSheets.delete(id!),
    );
  }

  Future<void> _saveFileToDirectory(
    BuildContext context,
    File file,
    String fileName,
  ) async {
    final fileData = file.readAsBytesSync();
    final mimeType = 'application/pdf';
    var directory = (await FlutterFileDialog.pickDirectory());

    var savedTo = await FlutterFileDialog.saveFileToDirectory(
      directory: directory!,
      data: fileData,
      mimeType: mimeType,
      fileName: fileName,
      replace: false,
      onFileExists: () async {
        await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: const Text('File already exists'),
              children: <Widget>[
                SimpleDialogOption(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.pop(context),
                ),
                SimpleDialogOption(
                  child: const Text('Replace'),
                  onPressed: () {
                    Navigator.pop(context);
                    FlutterFileDialog.saveFileToDirectory(
                      directory: directory,
                      data: fileData,
                      mimeType: mimeType,
                      fileName: fileName,
                      replace: true,
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$fileName created at: $savedTo'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }
}
