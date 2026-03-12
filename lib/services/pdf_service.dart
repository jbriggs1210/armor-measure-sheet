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

    var logoSvg = await rootBundle.loadString('lib/assets/logo_white.svg');
    // create first page

    pdf.addPage(
      pw.Page(
        orientation: pw.PageOrientation.portrait,
        build: (_) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Header(
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
              ),
              _buildCustomerInformationSection(measureSheetFromDb!),
            ],
          );
        },
      ),
    );

    pdf.addPage(
      pw.Page(
        orientation: pw.PageOrientation.portrait,
        build: (_) {
          return pw.Column(
            children: [
              pw.Padding(
                padding: pw.EdgeInsets.only(top: rowVerticalPadding * 2),
              ),
              _buildHomeDetails(measureSheetFromDb!),
              pw.Padding(
                padding: pw.EdgeInsets.only(top: rowVerticalPadding * 2),
              ),
              _buildProducts(measureSheetFromDb!),
            ],
          );
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

  pw.Widget _buildHomeDetails(MeasureSheet measureSheet) {
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
          _buildLabelAndValue(
            'Tentative Install Date',
            dateFormat.format(measureSheet.tentativeInstallDate as DateTime),
          ),
          rowHorizontalSizedBoxWidget,
          _buildLabelAndCheckmark(
            'Ready For Install',
            measureSheet.readyForInstall == 'Yes',
          ),
        ],
      ),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Header(
        level: 2,
        child: pw.Row(
          children: [
            pw.Center(
              child: pw.Text(
                'Siding',
                style: pw.TextStyle(decoration: pw.TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      _buildSidingBoxes(measureSheet.sidingOptions),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Header(
        level: 2,
        child: pw.Row(
          children: [
            pw.Center(
              child: pw.Text(
                'Trim',
                style: pw.TextStyle(decoration: pw.TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
      _buildTrimBoxes(measureSheet.trimOptions),
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      pw.Header(
        level: 2,
        child: pw.Row(
          children: [
            pw.Center(
              child: pw.Text(
                'Door Details',
                style: pw.TextStyle(decoration: pw.TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
      _buildDoorDetailsBoxes(measureSheet.doorDetails),
    ]);

    return pw.Flex(direction: pw.Axis.vertical, children: sectionChildren);
  }

  pw.Widget _buildProducts(MeasureSheet measureSheet) {
    List<pw.Widget> sectionChildren = [
      pw.Header(
        level: 1,
        child: pw.Row(children: [pw.Center(child: pw.Text('Products'))]),
      ),
    ];

    sectionChildren.addAll([
      pw.Padding(padding: pw.EdgeInsets.only(top: rowVerticalPadding)),
      _buildProductsBoxes(measureSheet.productOptions),
    ]);

    return pw.Column(children: sectionChildren);
  }

  pw.Wrap _buildSidingBoxes(SidingOptions sidingOptions) {
    List<pw.Widget> widgetsToWrap = [];

    widgetsToWrap.add(_buildLabelAndCheckmark('Hardie', sidingOptions.hardie));
    widgetsToWrap.add(_buildLabelAndCheckmark('Stucco', sidingOptions.stucco));
    widgetsToWrap.add(_buildLabelAndCheckmark('Vinyl', sidingOptions.vinyl));
    widgetsToWrap.add(_buildLabelAndCheckmark('Stone', sidingOptions.stone));
    widgetsToWrap.add(_buildLabelAndCheckmark('Brick', sidingOptions.brick));
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Concrete', sidingOptions.concrete),
    );
    widgetsToWrap.add(_buildLabelAndCheckmark('Other', sidingOptions.other));

    if (sidingOptions.other && sidingOptions.otherSpecifics != null) {
      widgetsToWrap.add(
        _buildLabelAndValue(
          'Specifics',
          sidingOptions.otherSpecifics as String,
        ),
      );
    }
    return pw.Wrap(spacing: 12.0, runSpacing: 6.0, children: widgetsToWrap);
  }

  pw.Wrap _buildTrimBoxes(TrimOptions trimOptions) {
    List<pw.Widget> widgetsToWrap = [];

    widgetsToWrap.add(
      _buildLabelAndCheckmark('Top & Bottom', trimOptions.topAndBottom),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('All Around', trimOptions.allAround),
    );
    widgetsToWrap.add(_buildLabelAndCheckmark('None', trimOptions.none));
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Keystone', trimOptions.keystone),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Header Stick-out', trimOptions.headerStickout),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Sill Stick-out', trimOptions.sillStickout),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Header Flush', trimOptions.headerFlush),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Sill Flush', trimOptions.sillFlush),
    );

    if (trimOptions.color != null) {
      widgetsToWrap.add(
        _buildLabelAndValue('Color', trimOptions.color as String),
      );
    }
    return pw.Wrap(spacing: 12.0, runSpacing: 6.0, children: widgetsToWrap);
  }

  pw.Wrap _buildProductsBoxes(ProductOptions productOptions) {
    List<pw.Widget> widgetsToWrap = [];
    // if (productOptions.desiredColor != null) {
    //   widgetsToWrap.add(
    //     _buildLabelAndValue(
    //       'Desired Color',
    //       productOptions.desiredColor as String,
    //     ),
    //   );
    // }
    // if (productOptions.swNumber != null) {
    //   widgetsToWrap.add(
    //     _buildLabelAndValue('S/W #', productOptions.swNumber as String),
    //   );
    // }
    if (productOptions.osb) {
      widgetsToWrap.add(_buildLabelAndCheckmark('OSB (O)', productOptions.osb));
    }
    widgetsToWrap.add(_buildLabelAndCheckmark('Galv (G)', productOptions.galv));
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Alum (Al)', productOptions.alum),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Fabric (F)', productOptions.fabric),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Accordions (Ac)', productOptions.accordions),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Rolldown (R)', productOptions.rolldown),
    );
    // todo: updated products from model
    // widgetsToWrap.add(
    //   _buildLabelAndCheckmark('Bah (B)/Col (C)', productOptions.bahCol),
    // );
    // widgetsToWrap.add(
    //   _buildLabelAndCheckmark('Lexan (L)', productOptions.lexan),
    // );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Screen Under', productOptions.screenUnder),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Pool Enclosure', productOptions.poolEnclosure),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Painted Caps', productOptions.paintedCaps),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark(
        'Bah Articulating (BA)',
        productOptions.bahArticulating,
      ),
    );
    // widgetsToWrap.add(
    //   _buildLabelAndCheckmark(
    //     'Deco Bah (DB)/Deco Col(DC)',
    //     productOptions.decoBahDecoCol,
    //   ),
    // );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Composite', productOptions.composite),
    );
    if (productOptions.composite && productOptions.compositeSpecifics != null) {
      widgetsToWrap.add(
        _buildLabelAndValue(
          'Specifics',
          productOptions.compositeSpecifics as String,
        ),
      );
    }
    if (productOptions.cutout != null) {
      widgetsToWrap.add(
        _buildLabelAndValue('Cutout', productOptions.cutout as String),
      );
    }
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Direct Mount (DM)', productOptions.directMount),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Armor Track (AT)', productOptions.armorTrack),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('"H" Header (H)', productOptions.hHeader),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Flat Track (FT)', productOptions.flatTrack),
    );

    return pw.Wrap(spacing: 12.0, runSpacing: 6.0, children: widgetsToWrap);
  }

  pw.Wrap _buildDoorDetailsBoxes(DoorDetails doorDetails) {
    List<pw.Widget> widgetsToWrap = [];
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Room Under Door?', doorDetails.roomUnderDoor),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Concrete Floor', doorDetails.concreteFloor),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark(
        'Brick/Stone/Tile and Sand Under?',
        doorDetails.brickStoneTileWithSandUnder,
      ),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark('Sill in Place?', doorDetails.sillInPlace),
    );
    widgetsToWrap.add(
      _buildLabelAndCheckmark(
        'Brick/Stone/Tile with Concrete Under?',
        doorDetails.brickStoneTileWithConcreteUnder,
      ),
    );

    return pw.Wrap(spacing: 12.0, runSpacing: 6.0, children: widgetsToWrap);
  }
}
