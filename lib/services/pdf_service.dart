import 'dart:io';

import 'package:armor_measure_sheet/db/measure_sheet.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'isar_service.dart';

class PdfService {
  var dateFormat = DateFormat('MM-dd-yyyy');
  var rowHorizontalSizedBoxWidget = pw.SizedBox(width: 10.0);
  var rowVerticalPadding = 10.0;

  Future<pw.Document> createDocument(int measureSheetId) async {
    var pdf = pw.Document();
    var measureSheetFromDb = IsarService.isarDatabase.measureSheets.getSync(
      measureSheetId,
    );

    if (measureSheetFromDb == null) {
      throw MeasureSheetNotFoundException(
          message: 'Measure Sheet Not Found in DB');
    }

    var logoSvg = await rootBundle.loadString('lib/assets/logo_white.svg');
    // create first page

    // Header
    var header = pw.Header(
      level: 0,
      child: pw.Row(
        children: [
          pw.SvgImage(
            svg: logoSvg,
            height: 40.0,
            width: 600.0,
            colorFilter: PdfColor.fromHex('8a203f'),
          ),
        ],
      ),
    );

    // Customer Information Section
    var customerInformationSection = _buildCustomerInformationSection(
        measureSheetFromDb);
    var builderSuperSection = _buildSuperInformation(measureSheetFromDb);
    // Home Details
    var homeDetailsSection = _buildHomeDetailsSection(measureSheetFromDb);
    // Siding
    var sidingSection = _buildSidingSection(measureSheetFromDb);
    // Trim
    var trimSection = _buildTrimSection(measureSheetFromDb);
    // Door Details
    var doorDetailsSection = _buildDoorDetailsSection(measureSheetFromDb);
    // Products
    var productsSection = _buildProductsSection(measureSheetFromDb);
    // Measure Information
    var measureInformationSection = _buildMeasureInformationSection(
        measureSheetFromDb);

    var pageContent = pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        header,
        pw.Container(
          child: customerInformationSection,
          decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.black),
              borderRadius: pw.BorderRadius.circular(5)),
          padding: pw.EdgeInsets.all(8.0),),
        pw.Container(
          child: builderSuperSection,
          decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.black),
              borderRadius: pw.BorderRadius.circular(5)),
          padding: pw.EdgeInsets.all(8.0),
        ),
        pw.Container(
          child: pw.Column(children: [
            homeDetailsSection,
            pw.SizedBox(height: 2.0),
            sidingSection,
            pw.SizedBox(height: 2.0),
            trimSection,
            pw.SizedBox(height: 2.0),
            doorDetailsSection,
          ]),
          decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.black),
              borderRadius: pw.BorderRadius.circular(5)),
          padding: pw.EdgeInsets.all(8.0),
        ),
        pw.Container(
          child: productsSection,
          decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.black),
              borderRadius: pw.BorderRadius.circular(5)),
          padding: pw.EdgeInsets.all(8.0),
        ),
        pw.Container(
          child: measureInformationSection,
          decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.black),
              borderRadius: pw.BorderRadius.circular(5)),
          padding: pw.EdgeInsets.all(8.0),),
      ],
    );

    pdf.addPage(
      pw.MultiPage(
        orientation: pw.PageOrientation.portrait,
          build: (pw.Context context) => <pw.Widget>[pageContent]
      ),
    );

    // new page for landscape
    var landscapePage = pw.MultiPage(
        orientation: pw.PageOrientation.landscape,
        build: (pw.Context context) =>
        <pw.Widget>[
          _buildMeasurementRecordsTable(
              measureSheetFromDb.measurementInfo.measurementRecords),
        ]
    );

    pdf.addPage(landscapePage);

    return pdf;
  }

  Future<File> andWriteToFile(pw.Document pdf, String jobNumber) async {
    var directory = (await getApplicationDocumentsDirectory()).path;
    String dir = directory;
    var file = File("$dir/$jobNumber.pdf");
    return file.writeAsBytes(await pdf.save());
  }

  pw.Widget _buildCustomerInformationSection(MeasureSheet measureSheet) {
    var section = [
      pw.Header(
        level: 1,
        child: pw.Center(child: pw.Text('Customer Information')),
      ),
      pw.SizedBox(height: 10.0),
      pw.Row(
          children: [
            pw.Text('Job Number: ${measureSheet.jobNumber}'),
            pw.SizedBox(width: 10.0),
            pw.VerticalDivider(thickness: 8.0, color: PdfColors.black),
            pw.Text('Date: ${dateFormat.format(measureSheet.jobDate!)}'),
            pw.SizedBox(width: 10.0),
            pw.VerticalDivider(thickness: 8.0, color: PdfColors.black),
            pw.Text('Sales Rep: ${measureSheet.salesRep}'),
          ]
      ),
      pw.SizedBox(height: 10.0),
      pw.Row(
          children: [
            pw.Text('Customer Name: ${measureSheet.customerName}'),
            pw.SizedBox(width: 10.0),
          ]
      ),
      pw.SizedBox(height: 10.0),
      pw.Row(
          children: [
            pw.Container(child: pw.Text(
                'Street Address: ${_buildAddress(measureSheet)}')),
          ]
      ),
      pw.SizedBox(height: 10.0),
      pw.Row(
          children: [
            pw.Text('Mobile 1: ${measureSheet.mobile1}'),
            pw.SizedBox(width: 10.0),
            pw.VerticalDivider(thickness: 8.0, color: PdfColors.black),
            pw.Text('Mobile 2: ${measureSheet.mobile2}'),
            pw.SizedBox(width: 10.0),
            pw.VerticalDivider(thickness: 8.0, color: PdfColors.black),
            pw.Text('Home Phone: ${measureSheet.homePhone}'),
          ]
      )
    ];

    return pw.Column(children: section);
  }

  pw.Widget _buildSuperInformation(MeasureSheet measureSheet) {
    var section = [
      pw.Header(
        level: 1,
        child: pw.Center(child: pw.Text('Builder/Super Information')),
        ),
      pw.Row(
          children: [
            pw.Text('Name: ${measureSheet.builderSuperName}'),
            pw.SizedBox(width: 10.0),
            pw.VerticalDivider(thickness: 8.0, color: PdfColors.black),
            pw.Text('Phone: ${measureSheet.builderSuperPhone}'),
          ]
      ),
    ];

    return pw.Column(children: section);
  }

  pw.Widget _buildHomeDetailsSection(MeasureSheet measureSheet) {
    List<pw.Widget> sectionChildren = [
      pw.Header(
        level: 1,
        child: pw.Center(child: pw.Text('Home Details')),
      ),
    ];

    sectionChildren.addAll([
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Row(
        children: [
          pw.Text('Tentative Install Date: ${dateFormat.format(
              measureSheet.tentativeInstallDate as DateTime)}'),
          if (measureSheet.readyForInstall)
            ... [
              pw.SizedBox(width: 10.0),
              pw.VerticalDivider(thickness: 8.0, color: PdfColors.black),
              pw.Text('Ready For Install: X'),
            ]
        ],
      ),
    ]);

    return pw.Column(children: sectionChildren);
  }

  String _buildAddress(MeasureSheet measureSheet) {
    var streetNumber = measureSheet.streetNumber;
    var streetName = measureSheet.streetName;
    var lotNumber = measureSheet.lotNumber ?? "";
    var plantation = measureSheet.plantation ?? "";
    var cityTown = measureSheet.cityTown ?? "";
    var state = measureSheet.state ?? "";
    var zipCode = measureSheet.zipCode ?? "";

    return '$streetNumber $streetName $lotNumber $plantation\n$cityTown $state, $zipCode';
  }

  pw.Widget _buildSidingSection(MeasureSheet measureSheet) {
    var section = [
      pw.Header(
          level: 2,
          child: pw.Row(children: [
            pw.Text('Siding',
                style: pw.TextStyle(decoration: pw.TextDecoration.underline))
          ])
      ),
      pw.Row(
          children: [
            _buildSidingRowContent(measureSheet.sidingOptions),
          ]
      ),
    ];
    return pw.Column(
        children: section
    );
  }

  pw.Widget _buildTrimSection(MeasureSheet measureSheet) {
    var section = [
      pw.Header(
          level: 2,
          child: pw.Row(children: [
            pw.Text('Trim',
                style: pw.TextStyle(decoration: pw.TextDecoration.underline))
          ])
      ),
      pw.Row(
          children: [
            pw.Expanded(child: _buildTrimRowContent(measureSheet.trimOptions)),
          ]
      ),
    ];
    return pw.Column(
        children: section
    );
  }

  pw.Widget _buildDoorDetailsSection(MeasureSheet measureSheet) {
    var section = [
      pw.Header(
          level: 2,
          child: pw.Row(children: [
            pw.Text('Door Details',
                style: pw.TextStyle(decoration: pw.TextDecoration.underline))
          ])
      ),
      pw.Row(
          children: [
            pw.Expanded(
                child: _buildDoorDetailsContent(measureSheet.doorDetails)),
          ]
      ),
    ];
    return pw.Column(
        children: section
    );
  }

  pw.Widget _buildProductsSection(MeasureSheet measureSheet) {
    var section = [
      pw.Header(
          level: 1,
        child: pw.Center(child: pw.Text('Products')),
      ),
      pw.Row(
          children: [
            pw.Expanded(
                child: _buildProductsContent(measureSheet.productOptions)),
          ]
      ),
    ];

    return pw.Column(
        children: section
    );
  }

  pw.Widget _buildMeasureInformationSection(MeasureSheet measureSheet) {
    var section = <pw.Widget>[
      pw.Header(
          level: 1,
          child: pw.Center(child: pw.Text('Measure Information'))
      ),
      if (measureSheet.measurer != null || measureSheet.measureDate != null)
        pw.Row(
            children: [
              if (measureSheet.measurer != null)
                pw.Expanded(
                    flex: 1,
                    child: pw.Text('Measurer: ${measureSheet.measurer}')
                ),
              if (measureSheet.measureDate != null)
                pw.Expanded(
                    flex: 1,
                    child: pw.Text('Measure Date: ${dateFormat.format(
                        measureSheet.measureDate!)}')
                ),
            ]
        ),
      if (measureSheet.measurer != null || measureSheet.measureDate != null)
        pw.SizedBox(height: 10.0),
      pw.Header(
          level: 2,
          child: pw.Row(children: [
            pw.Text('Active Levels',
                style: pw.TextStyle(
                    decoration: pw.TextDecoration.underline))
          ])
      ),
      pw.Row(children: [pw.Expanded(
          child: _buildActiveLevelsContent(measureSheet.activeLevels)
      ),
      ]),
      pw.Header(
          level: 2,
          child: pw.Row(children: [
            pw.Text('Safety Equipment',
                style: pw.TextStyle(
                    decoration: pw.TextDecoration.underline))
          ])
      ),
      pw.Row(children: [pw.Expanded(
          child: _buildEquipmentContent(measureSheet.safetyEquipment)),
      ]),
      pw.Header(
          level: 2,
          child: pw.Row(children: [
            pw.Text('Ladders/Lifts',
                style: pw.TextStyle(
                    decoration: pw.TextDecoration.underline))
          ])
      ),
      pw.Row(children: [pw.Expanded(
          child: buildLaddersLiftsContent(measureSheet.laddersLifts)),
      ]),
      pw.Header(
          level: 2,
          child: pw.Row(children: [
            pw.Text('Tools',
                style: pw.TextStyle(
                    decoration: pw.TextDecoration.underline))
          ])
      ),
      pw.Row(children: [pw.Expanded(
          child: _buildToolsContent(measureSheet.tools)),
      ]),
    ];
    return pw.Column(children: section);
  }

  pw.Widget _buildEquipmentSection(MeasureSheet measureSheet) {
    var section = <pw.Widget>[
      pw.Header(
          level: 1,
          child: pw.Row(children: [
            pw.Text('Equipment')
          ])
      ),
      pw.Row(
          children: [
            pw.Expanded(
                child: _buildEquipmentContent(measureSheet.safetyEquipment)),
          ]
      ),
    ];
    return pw.Column(children: section);
  }

  pw.Widget _buildActiveLevelsSection(MeasureSheet measureSheet) {
    var section = <pw.Widget>[
      pw.Row(children: [
        pw.Text('Active Levels',
            style: pw.TextStyle(decoration: pw.TextDecoration.underline)),
      ]),
      pw.Row(
          children: [
            pw.Expanded(
                child: _buildActiveLevelsContent(measureSheet.activeLevels))
          ]
      )
    ];
    return pw.Column(
        children: section
    );
  }

  pw.Widget _buildSidingRowContent(SidingOptions sidingOptions) {
    String content = '';
    var sidingMap = sidingOptions.toMap();
    content = sidingMap.entries
        .where((entry) =>
    entry.value != false &&
        !['other', 'color', 'otherSpecifics'].contains(entry.key))
        .map((entry) =>
    SidingOptions.sidingFieldsToDisplayMap[entry.key] ?? entry.key)
        .join(", ");

    // add other and color if necessary
    if (sidingMap['other']) {
      var prefixComma = !content.endsWith(',');
      if (prefixComma) {
        content += ', ';
      }
      content += 'Other: ${sidingMap['otherSpecifics']}';
    }
    if ((sidingMap['color'] as String).isNotEmpty) {
      var prefixComma = !content.endsWith(',');
      if (prefixComma) {
        content += ', ';
      }
      content += 'Color: ${sidingMap['color']}';
    }

    return pw.Text(content);
  }

  pw.Widget _buildTrimRowContent(TrimOptions trimOptions) {
    String content = '';
    var trimMap = trimOptions.toMap();
    content = trimMap.entries
        .where((entry) =>
    entry.value != false && !['color'].contains(entry.key))
        .map((entry) =>
    TrimOptions.trimFieldsToDisplayMap[entry.key] ?? entry.key)
        .join(", ");

    if ((trimMap['color'] as String).isNotEmpty) {
      var prefixComma = !content.endsWith(',');
      if (prefixComma) {
        content += ', ';
      }
      content += 'Color: ${trimMap['color']}';
    }

    return pw.Text(content, softWrap: true);
  }

  pw.Widget _buildDoorDetailsContent(DoorDetails doorDetails) {
    String content = '';
    var ddMap = doorDetails.toMap();
    content = ddMap.entries
        .where((entry) => entry.value)
        .map((entry) =>
    DoorDetails.doorDetailsFieldsToDisplayMap[entry.key] ?? entry.key)
        .join(", ");

    return pw.Text(content, softWrap: true);
  }

  pw.Widget _buildProductsContent(ProductOptions productOptions) {
    String content = '';
    var productsMap = productOptions.toMap();
    content = productsMap.entries
        .where((entry) =>
    entry.value != null && entry.value != false && ![
      'paintBrand',
      'otherBrandSpecify',
      'paintCode',
      'composite',
      'compositeSpecifics',
      'cutout',
    ].contains(entry.key))
        .map((entry) =>
    ProductOptions.productsFieldNameToDisplayMap[entry.key] ?? entry.key)
        .join(", ");

    if (productsMap['paintBrand'] == 'Other') {
      var prefixComma = !content.endsWith(',');
      if (prefixComma) {
        content += ', ';
      }
      content += 'Paint Brand: ${productsMap['otherBrandSpecify']}';
    }
    if ((productsMap['paintCode'] as String).isNotEmpty) {
      var prefixComma = !content.endsWith(',');
      if (prefixComma) {
        content += ', ';
      }
      content += 'Paint Code: ${productsMap['paintCode']}';
    }
    if (productsMap['composite']) {
      var prefixComma = !content.endsWith(',');
      if (prefixComma) {
        content += ', ';
      }
      content += 'Composite: ${productsMap['compositeSpecifics']}';
    }
    if (productsMap['cutout'] != null &&
        (productsMap['cutout'] as String).isNotEmpty) {
      var prefixComma = !content.endsWith(',');
      if (prefixComma) {
        content += ', ';
      }
      content += 'Cutout: ${productsMap['cutout']}';
    }
    return pw.Text(content, softWrap: true);
  }

  pw.Widget _buildEquipmentContent(SafetyEquipment safetyEquipment) {
    String content = '';
    var sEMap = safetyEquipment.toMap();
    content = sEMap.entries
        .where((entry) => entry.value)
        .map((entry) =>
    SafetyEquipment.safetyEquipmentFieldsToDisplayMap[entry.key] ?? entry.key)
        .join(", ");

    return pw.Text(content, softWrap: true);
  }

  pw.Widget _buildActiveLevelsContent(ActiveLevels activeLevels) {
    String content = '';
    var aLMap = activeLevels.toMap();
    content = aLMap.entries
        .where((entry) => entry.value)
        .map((entry) =>
    ActiveLevels.activeLevelsFieldsToDisplayMap[entry.key] ?? entry.key)
        .join(", ");

    return pw.Text(content, softWrap: true);
  }

  pw.Widget buildLaddersLiftsContent(LaddersLifts laddersLifts) {
    String content = '';
    var lLMap = laddersLifts.toMap();
    content = lLMap.entries
        .where((entry) => entry.value)
        .map((entry) =>
    LaddersLifts.laddersLiftsFieldsToDisplayMap[entry.key] ?? entry.key)
        .join(", ");

    return pw.Text(content, softWrap: true);
  }

  pw.Widget _buildToolsContent(Tools tools) {
    String content = '';
    var tMap = tools.toMap();
    content = tMap.entries
        .where((entry) => entry.value)
        .map((entry) =>
    Tools.toolsFieldsToDisplayMap[entry.key] ?? entry.key)
        .join(", ");

    return pw.Text(content, softWrap: true);
  }

  pw.Widget _buildMeasurementRecordsTable(
      List<MeasurementRecord> measurementRecords) {
    var table = pw.Table(
        border: pw.TableBorder.all(
            color: PdfColors.black, width: .5, style: pw.BorderStyle()),
        children: [
          pw.TableRow(
              children: [
                pw.Text('Opening #'),
                pw.Text('Type'),
                pw.Text('Level'),
                pw.Text('Product'),
                pw.Text('Span / Width'),
                pw.Text('Non-Span / Height'),
                pw.Text('Overall'),
                pw.Text('L Stack'),
                pw.Text('R Stack'),
                pw.Text('BO Top'),
                pw.Text('BO Side'),
                pw.Text('BO Bottom'),
                pw.Text('Note'),
              ]
          ),
          ...buildTableRowsForMeasurementRecord(measurementRecords),
        ]
    );

    return pw.Container(
        child: table
    );
  }

  List<pw.TableRow> buildTableRowsForMeasurementRecord(
      List<MeasurementRecord> measurementRecords) {
    return List.generate(measurementRecords.length, (index) {
      var record = measurementRecords.elementAt(index);
      var spanWidthCell = record.span ?? record.width;
      var nSpanHeightCell = record.nSpan ?? record.height;
      return pw.TableRow(
          children: [
            pw.Text('${record.openingNumber}'),
            pw.Text('${record.openingType}'),
            pw.Text('${record.level}'),
            pw.Text('${record.product}'),
            pw.Text('${spanWidthCell}'),
            pw.Text('${nSpanHeightCell}'),
            pw.Text(record.addOnMeasurement ? ' X ' : ''),
            pw.Text('${record.stackLeft}'),
            pw.Text('${record.stackRight}'),
            pw.Text('${record.buildOutTop}'),
            pw.Text('${record.buildOutSides}'),
            pw.Text('${record.buildOutBot}'),
            pw.Text('${record.noteReference}'),
          ]
      );
    });
  }

}

class MeasureSheetNotFoundException implements Exception {
  final String? message;

  MeasureSheetNotFoundException({this.message});
}
