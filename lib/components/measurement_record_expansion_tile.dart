import 'package:armor_measure_sheet/components/measure_sheet_constants.dart';
import 'package:armor_measure_sheet/db/measure_sheet.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MeasurementRecordExpansionTile extends StatefulWidget {
  final FormArray formArray;
  final MeasureSheet measureSheet;
  final TextEditingController textController;

  final int index;

  const MeasurementRecordExpansionTile({
    super.key,
    required this.measureSheet,
    required this.formArray,
    required this.index,
    required this.textController,
  });

  @override
  State<StatefulWidget> createState() => _MeasurementRecordExpansionTileState();
}

class _MeasurementRecordExpansionTileState
    extends State<MeasurementRecordExpansionTile> {
  late final MeasurementRecord _measurementRecord;
  late final int _index;
  late bool doShowSpans;
  late bool doShowStacks;
  late bool doShowWidthHeight;
  late bool doShowAddonMeasurement;
  late bool addonMeasurementOverride;

  @override
  void initState() {
    _index = widget.index;
    addonMeasurementOverride =
        widget.measureSheet.measurementInfo.addonMeasurementsOverride;
    _measurementRecord =
        widget.measureSheet.measurementInfo.measurementRecords[_index];
    doShowSpans = _doShowSpans(_measurementRecord);
    doShowWidthHeight = _doShowWidthHeight(_measurementRecord);
    doShowStacks = _doShowStacks(_measurementRecord);
    doShowAddonMeasurement = _doShowAddonMeasurement(_measurementRecord);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      // todo: can uncomment to make tiles have colored border meh
      // shape: RoundedRectangleBorder(
      //   side: BorderSide(color: _buildStatusColor(widget.formArray.control(_index.toString())), width: 1.0),
      // ),
      // // Border when the tile is collapsed
      // collapsedShape: RoundedRectangleBorder(
      //   side: BorderSide(color: _buildStatusColor(widget.formArray.control(_index.toString())), width: 1.0),
      // ),
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          spacing: 6.0,
          children: [
            ReactiveValueListenableBuilder(
                formControl: widget.formArray.control(_index.toString()),
                builder: (context, control, builder) {
                  Color statusColor = _buildStatusColor(control);

                  return SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 14.0, bottom: 8.0),
                      child: Center(
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              border: BoxBorder.all(color: Colors.black),
                              borderRadius: BorderRadiusGeometry.circular(100),
                              color: statusColor
                          ),
                        ),
                      ),
                    ),
                  );
                }),
            Flexible(
              flex: 1,
              child: ReactiveTextField<int>(
                formControlName: '${_index.toString()}.openingNumber',
                controller: widget.textController,
                decoration: InputDecoration(
                  helperText: '',
                  labelText: 'Opening #',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                keyboardType: TextInputType.number,
                onChanged: (control) {
                  _measurementRecord.openingNumber = control.value;
                },
              ),
            ),
            // todo: Will be dropdown after Dad supplies list of items
            Flexible(
              flex: 1,
              child: ReactiveTextField<String>(
                formControlName: '${_index.toString()}.openingType',
                decoration: InputDecoration(
                  helperText: '',
                  labelText: 'Opening Type',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                onChanged: (control) {
                  _measurementRecord.openingType = control.value!;
                },
              ),
            ),
            Flexible(
              flex: 1,
              child: ReactiveDropdownField<String>(
                formControlName: '${_index.toString()}.level',
                isExpanded: true,
                decoration: InputDecoration(
                  helperText: '',
                  labelText: 'Level',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                items: _buildLevelsDropdown(widget.measureSheet.activeLevels),
                onChanged: (control) {
                  _measurementRecord.level = control.value!;
                },
              ),
            ),
            Flexible(
              flex: 2,
              child: ReactiveDropdownField<String>(
                formControlName: '${_index.toString()}.product',
                isExpanded: true,
                items: _buildProductsDropdown(
                  widget.measureSheet.productOptions,
                ),
                decoration: InputDecoration(
                  helperText: '',
                  labelText: 'Product',
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                onChanged: (control) {
                  // this might be better somewhere else
                  _measurementRecord.product = control.value!;
                  _resetFields(widget.formArray.control(_index.toString()),
                      _measurementRecord.product);
                  setState(() {
                    doShowSpans = _doShowSpans(_measurementRecord);
                    doShowWidthHeight = _doShowWidthHeight(_measurementRecord);
                    doShowStacks = _doShowStacks(_measurementRecord);
                    doShowAddonMeasurement =
                        _doShowAddonMeasurement(_measurementRecord);
                  });
                },
              ),
            ),
          ],
        ),
      ),
      leading: IconButton(
        onPressed: () {
          // for ui
          widget.formArray.removeAt(_index);
          // for data structure
          setState(() {
            var newList = widget.measureSheet.measurementInfo.measurementRecords
                .toList();
            newList.removeAt(_index);
            widget.measureSheet.measurementInfo.measurementRecords = newList;
          });
        },
        icon: Icon(Icons.delete_sharp, color: Colors.red[900]),
      ),
      children: [
        // todo: only show if span / nspan are collected
        // if (doShowSpans)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            spacing: 10.0,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (doShowSpans)
                Flexible(
                  flex: 1,
                  child: ReactiveDropdownField<String>(
                    formControlName: '${_index.toString()}.spanDirection',
                    isExpanded: true,
                    items: [
                      DropdownMenuItem(
                        value: 'T/B',
                        child: Text(
                          'T/B',
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'L/R',
                        child: Text(
                          'L/R',
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Direction',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    onChanged: (control) {
                      _measurementRecord.spanDirection = control.value;
                    },
                  ),
                ),
              if (doShowSpans)
                Flexible(
                  flex: 1,
                  child: ReactiveTextField<String>(
                    formControlName: '${_index.toString()}.span',
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Span',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    onChanged: (control) {
                      _measurementRecord.span = control.value;
                    },
                  ),
                ),
              if (doShowSpans)
                Flexible(
                  flex: 1,
                  child: ReactiveTextField<String>(
                    formControlName: '${_index.toString()}.nSpan',
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'NSpan',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    onChanged: (control) {
                      _measurementRecord.nSpan = control.value;
                    },
                  ),
                ),
              if (doShowWidthHeight)
                Flexible(
                  flex: 1,
                  child: ReactiveTextField<String>(
                    formControlName: '${_index.toString()}.width',
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Width',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    onChanged: (control) {
                      _measurementRecord.width = control.value;
                    },
                  ),
                ),
              if (doShowWidthHeight)
                Flexible(
                  flex: 1,
                  child: ReactiveTextField<String>(
                    formControlName: '${_index.toString()}.height',
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Height',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    onChanged: (control) {
                      _measurementRecord.height = control.value;
                    },
                  ),
                ),
              if (doShowStacks)
                Flexible(
                  flex: 1,
                  child: ReactiveDropdownField<String>(
                    formControlName: '${_index.toString()}.leftStack',
                    isExpanded: true,
                    items: _stackPercentageDropdownItems(),
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Left Stack',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    onChanged: (control) {
                      _measurementRecord.stackLeft = control.value;

                      // this is pretty bad but for now it works
                      var fg = control.parent as FormGroup;
                      var opposite = '';

                      switch (control.value) {
                        case '0':
                          opposite = '100';
                        case '10':
                          opposite = '90';
                        case '20':
                          opposite = '80';
                        case '25':
                          opposite = '75';
                        case '30':
                          opposite = '70';
                        case '40':
                          opposite = '60';
                        case '50':
                          opposite = '50';
                        case '60':
                          opposite = '40';
                        case '70':
                          opposite = '30';
                        case '75':
                          opposite = '25';
                        case '80':
                          opposite = '20';
                        case '90':
                          opposite = '10';
                        case '100':
                          opposite = '0';
                      }

                      fg
                          .control('rightStack')
                          .value = opposite;

                      _measurementRecord.stackRight = opposite;
                    },
                  ),
                ),
              if (doShowStacks)
                Flexible(
                  flex: 1,
                  child: ReactiveDropdownField<String>(
                    formControlName: '${_index.toString()}.rightStack',
                    isExpanded: true,
                    items: _stackPercentageDropdownItems(),
                    decoration: InputDecoration(
                      helperText: '',
                      labelText: 'Right Stack',
                      border: OutlineInputBorder(),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                    onChanged: (control) {
                      _measurementRecord.stackRight = control.value;

                      // this is pretty bad but for now it works
                      var fg = control.parent as FormGroup;
                      var opposite = '';

                      switch (control.value) {
                        case '0':
                          opposite = '100';
                        case '10':
                          opposite = '90';
                        case '20':
                          opposite = '80';
                        case '25':
                          opposite = '75';
                        case '30':
                          opposite = '70';
                        case '40':
                          opposite = '60';
                        case '50':
                          opposite = '50';
                        case '60':
                          opposite = '40';
                        case '70':
                          opposite = '30';
                        case '75':
                          opposite = '25';
                        case '80':
                          opposite = '20';
                        case '90':
                          opposite = '10';
                        case '100':
                          opposite = '0';
                      }

                      fg
                          .control('leftStack')
                          .value = opposite;

                      _measurementRecord.stackLeft = opposite;
                    },
                  ),
                ),
              Flexible(
                flex: 1,
                child: ReactiveDropdownField<String>(
                  formControlName: '${_index.toString()}.buildOutTop',
                  isExpanded: true,
                  decoration: InputDecoration(
                    helperText: '',
                    labelText: 'BO Top',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  items: _buildBuildOutsDropDown(),
                  onChanged: (control) {
                    _measurementRecord.buildOutTop = control.value;
                  },
                ),
              ),
              Flexible(
                flex: 1,
                child: ReactiveDropdownField<String>(
                  formControlName: '${_index.toString()}.buildOutSides',
                  isExpanded: true,
                  decoration: InputDecoration(
                    helperText: '',
                    labelText: 'BO Sides',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  items: _buildBuildOutsDropDown(),
                  onChanged: (control) {
                    _measurementRecord.buildOutSides = control.value;
                  },
                ),
              ),
              Flexible(
                flex: 1,
                child: ReactiveDropdownField<String>(
                  formControlName: '${_index.toString()}.buildOutBot',
                  isExpanded: true,
                  decoration: InputDecoration(
                    helperText: '',
                    labelText: 'BO Bot',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  items: _buildBuildOutsDropDown(),
                  onChanged: (control) {
                    _measurementRecord.buildOutBot = control.value;
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: ReactiveDropdownField<String>(
                  formControlName: '${_index.toString()}.noteReference',
                  isExpanded: true,
                  items: _buildNotesDropdown(),
                  decoration: InputDecoration(
                    helperText: '',
                    labelText: 'Opening Note',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (control) {
                    _measurementRecord.noteReference = control.value;
                  },
                ),
              ),
            ],
          ),
        ),
        // todo: if Rolldown or Accordions or Composites or Colonials is product for an opening span / Nspan are not collected
        // Composite could be
        // Collect width x height
        // 1. if it's in the list of products above we collect Width and Height instead of Span and NSpan
        // todo: 2. if it's in the list of products above we show this checkbox
        // todo: 3. if the "master" override above the openings for this checkbox is selected it applies to
        // todo: 3cont. all openings that have a product selected in the above list and does not display this checkbox
        // todo: 4. update pdf for width / height AND add column for Overall Measurement
        if (doShowAddonMeasurement)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Measurements reflect add-on dimensions.',
                ),
                ReactiveCheckbox(
                  formControlName: '${_index.toString()}.addOnMeasurement',
                  onChanged: (control) {
                    _measurementRecord.addOnMeasurement =
                    control.value!;
                  },
                ),
              ],
            ),
          ),
      ],
    );
  }

  List<DropdownMenuItem<String>> _buildProductsDropdown(
    ProductOptions productOptions,
  ) {
    return productOptions.productsToMeasure().map((pTM) {
      return DropdownMenuItem(
        value: pTM,
        child: GestureDetector(
          child: Text(pTM, softWrap: true, overflow: TextOverflow.ellipsis),
          onLongPress: () {
            print(pTM);
          },
        ),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> _buildLevelsDropdown(
    ActiveLevels activeLevels,
  ) {
    return activeLevels.levelsForMeasure().map((pTM) {
      return DropdownMenuItem(
          value: pTM, child: Text(pTM, overflow: TextOverflow.ellipsis,));
    }).toList();
  }

  List<DropdownMenuItem<String>> _buildBuildOutsDropDown() {
    return [
      'N/A',
      '1 X 1 A',
      '1.5 X 1.5 A',
      '1/2 X 3 A',
      '1 X 2 A',
      '1 X 3 A',
      '2 X 3 A',
      '1 X 2 R',
      '1 X 3 R',
      '2 X 2 R',
      '2 X 3 R',
      '2 X 4 R',
      '3 X 3 R',
      'FT',
      '1"FT',
      'RS',
      'DM',
      'H',
      '1"H',
    ].map((item) {
      return DropdownMenuItem<String>(
          value: item, child: Text(item, overflow: TextOverflow.ellipsis,)
      );
    }).toList();
  }

  bool _doShowSpans(MeasurementRecord measurementRecord) {
    var doShowSpans = !_doShowWidthHeight(measurementRecord);

    // print('_doShowSpans: $doShowSpans');

    return doShowSpans;
  }

  bool _doShowWidthHeight(MeasurementRecord measurementRecord) {
    var doShowWidthHeight = ProductConstants.productsToCollectAddonMeasurements
        .contains(
        measurementRecord.product);

    // print('doShowWidthHeight: $doShowWidthHeight');

    return doShowWidthHeight;
  }

  bool _doShowStacks(MeasurementRecord measurementRecord) {
    var doShowStacks = measurementRecord.product ==
        ProductConstants.productAccordions;

    // print('doShowStacks: $doShowStacks');

    return doShowStacks;
  }

  // shows if product is a certain type AND if override is false
  bool _doShowAddonMeasurement(MeasurementRecord measurementRecord) {
    var doShowAddonMeasurement = !addonMeasurementOverride &&
        ProductConstants.productsToCollectAddonMeasurements.contains(
            measurementRecord.product);

    print('addonMeasurementOverride: $addonMeasurementOverride');
    print('product: ${measurementRecord.product}');
    print('doShowAddonMeasurement: $doShowAddonMeasurement');

    return doShowAddonMeasurement;
  }

  List<DropdownMenuItem<String>> _stackPercentageDropdownItems() {
    return [
      '0',
      '10',
      '20',
      '25',
      '30',
      '40',
      '50',
      '60',
      '70',
      '75',
      '80',
      '90',
      '100',
    ].map((percentage) {
      return DropdownMenuItem(
        value: percentage,
        child: Text(
          '$percentage%',
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> _buildNotesDropdown() {
    List<String> notes = widget.measureSheet.measurementInfo.notes.toList();

    return notes.map((note) {
      return DropdownMenuItem<String>(
        value: note,
        child: Text(note, softWrap: true),
      );
    }).toList();
  }

  /**
   * 'openingNumber': FormControl<int>(value: record.openingNumber),
      'openingType': FormControl<String>(value: record.openingType),
      'level': FormControl<String>(value: record.level),
      'product': FormControl<String>(value: record.product),
      'spanDirection': FormControl<String>(value: record.spanDirection),
      'span': FormControl<String>(
      value: record.span, validators: [ _ValueMustBeDivisibleByPoint25()]),
      'nSpan': FormControl<String>(
      value: record.nSpan, validators: [ _ValueMustBeDivisibleByPoint25()]),
      'width': FormControl<String>(value: record.width),
      'height': FormControl<String>(value: record.height),
      'leftStack': FormControl<String>(value: record.stackLeft),
      'rightStack': FormControl<String>(value: record.stackRight),
      'buildOutTop': FormControl<String>(value: record.buildOutTop),
      'buildOutSides': FormControl<String>(value: record.buildOutSides),
      'buildOutBot': FormControl<String>(value: record.buildOutBot),
      'noteReference': FormControl<String>(value: record.noteReference),
      'addOnMeasurement': FormControl<bool>(
      value: record.addOnMeasurement,
      ),
   */
  Color _buildStatusColor(AbstractControl<dynamic> control) {
    var fg = control as FormGroup;

    // todo: also if form is incomplete for product type return red
    // must be filled in always
    var product = fg
        .control('product')
        .value;
    var fieldsToCheck = [
      product,
      fg
          .control('openingNumber')
          .value,
      fg
          .control('openingType')
          .value,
      fg
          .control('level')
          .value,
      fg
          .control('buildOutTop')
          .value,
      fg
          .control('buildOutSides')
          .value,
      fg
          .control('buildOutBot')
          .value,
    ];

    var addSpanFields = !ProductConstants.productsToCollectAddonMeasurements
        .contains(product);
    var addWidthHeightFields = ProductConstants
        .productsToCollectAddonMeasurements.contains(product);
    // must be filled in for certain products
    if (addSpanFields) {
      fieldsToCheck.addAll([fg
          .control('spanDirection')
          .value,
        fg
            .control('span')
            .value,
        fg
            .control('nSpan')
            .value,
      ]);
    }

    if (addWidthHeightFields) {
      fieldsToCheck.addAll([
        fg
            .control('width')
            .value,
        fg
            .control('height')
            .value,
      ]);
    }
    // must be filled in for certain accordions
    if (ProductConstants.productAccordions == product) {
      fieldsToCheck.addAll([
        fg
            .control('leftStack')
            .value,
        fg
            .control('rightStack')
            .value,
      ]);
    }

    if (fg.hasErrors) {
      // print(fg.control('openingNumber').value);
      // print(fg.errors);
      return Colors.red;
    }

    for (var field in fieldsToCheck) {
      if (field == null) {
        return Colors.red;
      }
      if (field is String && field
          .toString()
          .isEmpty) {
        return Colors.red;
      }
    }

    return Colors.green;
  }

  // Should be form group for measurement record
  void _resetFields(AbstractControl<dynamic> control, String? product) {
    // if product is not Accordions (Ac) we reset stack field errors and values
    var fg = control as FormGroup;
    if (product != null && product != 'Accordions (Ac)') {
      fg.control('leftStack').removeError('Required');
      fg.control('rightStack').removeError('Required');
    }
  }
}
