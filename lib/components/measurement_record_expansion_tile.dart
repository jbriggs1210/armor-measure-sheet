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

  @override
  void initState() {
    _index = widget.index;
    _measurementRecord =
        widget.measureSheet.measurementInfo.measurementRecords[_index];
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          spacing: 6.0,
          children: [
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
                  _measurementRecord.product = control.value!;
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            spacing: 10.0,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
              // todo: these cause an issue with spacing, not sure how to resolve
              ReactiveValueListenableBuilder(
                formControlName: '${_index.toString()}.product',
                builder: (context, control, child) {
                  return _addLeftStackOrEmptyContainer(
                    _index,
                    _measurementRecord.product,
                  );
                },
              ),
              ReactiveValueListenableBuilder(
                formControlName: '${_index.toString()}.product',
                builder: (context, control, child) {
                  return _addRightStackOrEmptyContainer(
                    _index,
                    _measurementRecord.product,
                  );
                },
              ),
              Flexible(
                flex: 1,
                child: ReactiveTextField<String>(
                  formControlName: '${_index.toString()}.buildOutTop',
                  decoration: InputDecoration(
                    helperText: '',
                    labelText: 'BO Top',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) {
                    _measurementRecord.buildOutTop = control.value;
                  },
                ),
              ),
              Flexible(
                flex: 1,
                child: ReactiveTextField<String>(
                  formControlName: '${_index.toString()}.buildOutSides',
                  decoration: InputDecoration(
                    helperText: '',
                    labelText: 'BO Sides',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  onChanged: (control) {
                    _measurementRecord.buildOutSides = control.value;
                  },
                ),
              ),
              Flexible(
                flex: 1,
                child: ReactiveTextField<String>(
                  formControlName: '${_index.toString()}.buildOutBot',
                  decoration: InputDecoration(
                    helperText: '',
                    labelText: 'BO Bot',
                    border: OutlineInputBorder(),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
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
      return DropdownMenuItem(value: pTM, child: Text(pTM));
    }).toList();
  }

  Widget _addLeftStackOrEmptyContainer(int index, String? product) {
    Container emptyContainer = Container();
    if (product == null) {
      return emptyContainer;
    }

    if (ProductOptions.requiresLeftRightStack(product)) {
      return Flexible(
        flex: 1,
        child: ReactiveDropdownField<String>(
          formControlName: '${index.toString()}.leftStack',
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
            }

            fg.control('rightStack').value = opposite;

            _measurementRecord.stackRight = opposite;
          },
        ),
      );
    }

    return emptyContainer;
  }

  Widget _addRightStackOrEmptyContainer(int index, String? product) {
    Container emptyContainer = Container();
    if (product == null) {
      return emptyContainer;
    }

    if (ProductOptions.requiresLeftRightStack(product)) {
      return Flexible(
        flex: 1,
        child: ReactiveDropdownField<String>(
          formControlName: '${index.toString()}.rightStack',
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
            }

            fg.control('leftStack').value = opposite;

            _measurementRecord.stackLeft = opposite;
          },
        ),
      );
    }

    return emptyContainer;
  }

  List<DropdownMenuItem<String>> _stackPercentageDropdownItems() {
    return [
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
}
