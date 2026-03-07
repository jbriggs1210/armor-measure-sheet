import 'dart:async';

import 'package:armor_measure_sheet/components/measure_sheet_list_item.dart';
import 'package:armor_measure_sheet/services/isar_service.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../components/measure_sheet_card.dart';
import '../db/measure_sheet.dart';
import 'create_measure_sheet_page_1.dart';

class MeasureSheetCardsPage extends StatefulWidget {
  const MeasureSheetCardsPage({super.key});

  @override
  State<MeasureSheetCardsPage> createState() => _MeasureSheetCardsPageState();
}

class _MeasureSheetCardsPageState extends State<MeasureSheetCardsPage> {
  final TextEditingController _filterController = TextEditingController();
  late Stream<void> measureSheetsChanged;

  bool _isCardViewOrList = true; //default to card fornow
  String _filterText = "";
  List<MeasureSheet> measureSheets = [];
  List<MeasureSheet> _filteredMeasureSheets = [];

  @override
  void initState() {
    super.initState();
    measureSheetsChanged = IsarService.isarDatabase.measureSheets.watchLazy(
      fireImmediately: true,
    );

    measureSheetsChanged.listen((_) {
      setState(() {
        measureSheets = IsarService.isarDatabase.measureSheets
            .where()
            .findAllSync();
        _filteredMeasureSheets = measureSheets;
      });
    });

    _filterController.addListener(_filterItems);
  }

  void _filterItems() {
    setState(() {
      _filterText = _filterController.text.toLowerCase();
      if (_filterText.isEmpty) {
        _filteredMeasureSheets = measureSheets;
      } else {
        _filteredMeasureSheets = measureSheets.where((item) {
          return item.jobNumber!.contains(_filterText) ||
              item.salesRep!.toLowerCase().contains(_filterText.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  void dispose() {
    _filterController.removeListener(_filterItems);
    _filterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _filterController,
          decoration: const InputDecoration(
            hintText: 'Filter by job number or sales rep:',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: const TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: SafeArea(
        // todo: need ability to switch between card view and list view of jobs
        // todo: list view could be slidables with their options behind the slide
        child: Column(
          children: [
            Row(children: [
              IconButton.filledTonal(
                color: Colors.red[900],
                icon: Icon(_isCardViewOrList ? Icons.list_outlined : Icons
                    .grid_on_outlined, color: Colors.red[900]),
                onPressed: () {
                  setState(() {
                    _isCardViewOrList = !_isCardViewOrList;
                  });
                },)
            ],),
            _isCardViewOrList ? GridView.builder(
              shrinkWrap: true,
              itemCount: _filteredMeasureSheets.length,
              padding: EdgeInsets.all(4),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) =>
                  MeasureSheetCard(measureSheet: _filteredMeasureSheets[index]),
            ) : ListView.separated(
              shrinkWrap: true,
              itemCount: _filteredMeasureSheets.length,
              itemBuilder: (context, index) {
                return MeasureSheetListItem(
                    measureSheet: _filteredMeasureSheets[index]);
              }, separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey,
                thickness: 1,
              );
            },)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CreateMeasureSheetPage1(),
            ),
          );
        },
        tooltip: 'Create a new measure sheet.',
        child: Icon(Icons.add),
      ),
    );
  }
}
