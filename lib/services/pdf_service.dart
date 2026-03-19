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
      ;
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
    var customerInformationSection = _buildCustomerInformationV2(
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

    var pageOneContent = pw.Column(
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
          child: pw.Column(children: [
            productsSection,
          ]),
          decoration: pw.BoxDecoration(
              border: pw.Border.all(color: PdfColors.black),
              borderRadius: pw.BorderRadius.circular(5)),
          padding: pw.EdgeInsets.all(8.0),
        ),
      ],
    );

    pdf.addPage(
      pw.Page(
        orientation: pw.PageOrientation.portrait,
        build: (_) {
          return pageOneContent;
        },
      ),
    );

    return pdf;
  }

  Future<File> andWriteToFile(pw.Document pdf, String jobNumber) async {
    var directory = (await getApplicationDocumentsDirectory()).path;
    String dir = directory;
    var file = File("$dir/$jobNumber.pdf");
    return file.writeAsBytes(await pdf.save());
  }

  pw.Widget _buildLabelAndValue(String label, Object value, {double? width}) {
    if (value is String? && value.toString().isEmpty) {
      return pw.Container();
    }
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      mainAxisSize: pw.MainAxisSize.min,
      mainAxisAlignment: pw.MainAxisAlignment.start,
      children: [
        pw.Container(child: pw.Text('$label:')),
        pw.SizedBox(width: 10.0),
        pw.Container(
          width: width,
          margin: pw.EdgeInsets.only(bottom: 2.0),
          padding: pw.EdgeInsets.all(2.0),
          decoration: pw.BoxDecoration(border: pw.Border.all()),
          child: pw.Text('$value'),
        ),
      ],
    );
  }

  pw.Widget _buildLabelAndCheckmark(
    String label,
    bool? isChecked, {
    double? width,
  }) {
    if (isChecked == null || !isChecked) {
      return pw.Container();
    }
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      mainAxisSize: pw.MainAxisSize.min,
      mainAxisAlignment: pw.MainAxisAlignment.start,
      children: [
        pw.Container(child: pw.Text('$label:')),
        pw.SizedBox(width: 10.0),
        pw.Container(
          width: width,
          margin: pw.EdgeInsets.only(bottom: 2.0),
          padding: pw.EdgeInsets.all(2.0),
          decoration: pw.BoxDecoration(border: pw.Border.all()),
          child: pw.Checkbox(
            value: isChecked,
            name: label,
            activeColor: PdfColors.white,
            checkColor: PdfColors.black,
            height: 10,
            width: 10,
          ),
        ),
      ],
    );
  }

  pw.Widget _buildCustomerInformationSection(MeasureSheet measureSheet) {
    List<pw.Widget> sectionChildren = [
      pw.Header(
        level: 1,
        child: pw.Row(
          children: [pw.Center(child: pw.Text('Customer Information'))],
        ),
      ),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Row(
        children: [
          _buildLabelAndValue(
            'Date',
            dateFormat.format(measureSheet.jobDate as DateTime),
          ),
          rowHorizontalSizedBoxWidget,
          _buildLabelAndValue('Job Number', measureSheet.jobNumber as String),
          rowHorizontalSizedBoxWidget,
          _buildLabelAndValue('Sales Rep', measureSheet.salesRep as String),
        ],
      ),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Row(
        children: [
          _buildLabelAndValue('Customer Name', measureSheet.customerName ?? ''),
        ],
      ),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Row(
        children: [
          _buildLabelAndValue('Street Number', measureSheet.streetNumber ?? ''),
          _buildLabelAndValue('Lot Number', measureSheet.lotNumber ?? ''),
        ],
      ),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Row(
        children: [
          _buildLabelAndValue('Street Name', measureSheet.streetName ?? ''),
        ],
      ),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Row(
        children: [
          _buildLabelAndValue('City/Town', measureSheet.cityTown ?? ''),
          rowHorizontalSizedBoxWidget,
          _buildLabelAndValue('State', measureSheet.state ?? ''),
        ],
      ),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Row(
        children: [_buildLabelAndValue('Zip Code', measureSheet.zipCode ?? '')],
      ),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Row(
        children: [
          _buildLabelAndValue('Plantation', measureSheet.plantation ?? ''),
          rowHorizontalSizedBoxWidget,
          _buildLabelAndValue('Mobile 1', measureSheet.mobile1 ?? ''),
          rowHorizontalSizedBoxWidget,
          _buildLabelAndValue('Mobile 2', measureSheet.mobile2 ?? ''),
        ],
      ),
    ];

    if (measureSheet.builderSuperName != null ||
        measureSheet.builderSuperPhone != null) {
      sectionChildren.add(
        pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      );
      sectionChildren.add(
        pw.Header(
          level: 1,
          child: pw.Row(
            children: [pw.Center(child: pw.Text('Builder/Super Information'))],
          ),
        ),
      );
      sectionChildren.add(
        pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      );
      sectionChildren.add(
        pw.Row(
          children: [
            _buildLabelAndValue('Name', measureSheet.builderSuperName ?? ''),
            rowHorizontalSizedBoxWidget,
            _buildLabelAndValue('Phone', measureSheet.builderSuperPhone ?? ''),
          ],
        ),
      );
    }
    return pw.Flex(direction: pw.Axis.vertical, children: sectionChildren);
  }

  pw.Widget _buildCustomerInformationV2(MeasureSheet measureSheet) {
    var section = [
      pw.Header(
        level: 1,
        child: pw.Row(
          children: [pw.Center(child: pw.Text('Customer Information'))],
        ),
      ),
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
      pw.Row(
          children: [
            pw.Text('Customer Name: ${measureSheet.customerName}'),
            pw.SizedBox(width: 10.0),
          ]
      ),
      pw.Row(
          children: [
            pw.Container(child: pw.Text(
                'Street Address: ${_buildAddress(measureSheet)}')),
          ]
      ),
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
        child: pw.Row(
          children: [pw.Center(child: pw.Text('Builder/Super Information'))],
        ),
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
        child: pw.Row(children: [pw.Center(child: pw.Text('Home Details'))]),
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
          child: pw.Row(children: [
            pw.Text('Products')
          ])
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

}

class MeasureSheetNotFoundException implements Exception {
  final String? message;

  MeasureSheetNotFoundException({this.message});
}
