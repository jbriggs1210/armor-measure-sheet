import 'package:isar/isar.dart';

part 'measure_sheet.g.dart';

@collection
class MeasureSheet {
  Id? id = Isar.autoIncrement;
  String? jobNumber;

  // customer information section
  String? salesRep;
  DateTime? jobDate;
  String? customerName;
  String? streetNumber;
  String? lotNumber;
  String? streetName;
  String? cityTown;
  String? state;
  String? zipCode;
  String? plantation;
  String? mobile1;
  String? mobile2;
  String? homePhone;
  String? builderSuperName;
  String? builderSuperPhone;

  // Home details
  DateTime? tentativeInstallDate;
  bool readyForInstall = false;
  SidingOptions sidingOptions = SidingOptions();
  TrimOptions trimOptions = TrimOptions();
  DoorDetails doorDetails = DoorDetails();
  ProductOptions productOptions = ProductOptions();

  // Measure info
  DateTime? measureDate;
  String? measurer;
  bool photosTaken = false;
  bool photosUploaded = false;
  bool salesInfoAccurate = false;
  ActiveLevels activeLevels = ActiveLevels();
  LaddersLifts laddersLifts = LaddersLifts();
  Tools tools = Tools();
  SafetyEquipment safetyEquipment = SafetyEquipment();
  MeasurementInfo measurementInfo = MeasurementInfo();

  DateTime createdAt = DateTime.now();
  DateTime modifiedAt = DateTime.now();
}

@embedded
class SidingOptions {
  bool hardie = false;
  bool stucco = false;
  bool vinyl = false;
  bool stone = false;
  bool brick = false;
  bool concrete = false;
  bool other = false;
  String? otherSpecifics;
  String? color;
}

@embedded
class TrimOptions {
  bool topAndBottom = false;
  bool allAround = false;
  bool headerStickout = false;
  bool headerFlush = false;
  bool sillStickout = false;
  bool sillFlush = false;
  bool keystone = false;
  bool none = false;
  String? color;
}

@embedded
class DoorDetails {
  bool roomUnderDoor = false;
  bool concreteFloor = false;
  bool brickStoneTileWithSandUnder = false;
  bool sillInPlace = false;
  bool brickStoneTileWithConcreteUnder = false;
}

@embedded
class ProductOptions {
  String? paintBrand;
  String? otherBrandSpecify;
  String? paintCode;

  bool osb = false;
  bool galv = false;
  bool alum = false;
  bool fabric = false;
  bool accordions = false;
  bool rolldown = false;
  bool clearPanels = false;
  bool screenUnder = false;
  bool retractableScreen = false;
  bool poolEnclosure = false;
  bool paintedCaps = false;
  bool bahArticulating = false;
  bool decoBahama = false;
  bool decoColonial = false;
  bool ratedBahama2Inch = false;
  bool ratedBahama4Inch = false;
  bool ratedColonialLouvered = false;
  bool ratedColonialBoardAndBatten = false;

  bool composite = false;
  String? compositeSpecifics;
  String? cutout;
  bool directMount = false;
  bool armorTrack = false;
  bool hHeader = false;
  bool flatTrack = false;

  List<String> productsToMeasure() {
    List<String> products = [];

    if (osb) {
      products.add('OSB (O)');
    }
    if (galv) {
      products.add('Galv (G)');
    }
    if (alum) {
      products.add('Alum (Al)');
    }
    if (fabric) {
      products.add('Fabric (F)');
    }
    if (accordions) {
      products.add('Accordions (Ac)');
    }
    if (rolldown) {
      products.add('Rolldown (R)');
    }
    if (clearPanels) {
      products.add('Clear Panels');
    }
    if (screenUnder) {
      products.add('Screen Under');
    }
    if (retractableScreen) {
      products.add('Retractable Screen');
    }
    if (poolEnclosure) {
      products.add('Pool Enclosure');
    }
    if (paintedCaps) {
      products.add('Painted Caps');
    }
    if (bahArticulating) {
      products.add('Bah Articulating (BA)');
    }
    if (decoBahama) {
      products.add('Deco Bahama');
    }
    if (decoColonial) {
      products.add('Deco Colonial');
    }
    if (ratedBahama2Inch) {
      products.add('Rated Bahama 2"');
    }
    if (ratedBahama4Inch) {
      products.add('Rated Bahama 4"');
    }
    if (ratedColonialLouvered) {
      products.add('Rated Colonial Louvered');
    }
    if (ratedColonialBoardAndBatten) {
      products.add('Rated Colonial B&B');
    }
    if (composite) {
      products.add('Composite - $compositeSpecifics');
    }
    if (cutout != null) {
      products.add(cutout!);
    }
    if (directMount) {
      products.add('Direct Mount (DM)');
    }
    if (armorTrack) {
      products.add('Armor Track (AT)');
    }
    if (hHeader) {
      products.add('"H" Header (H)');
    }
    if (flatTrack) {
      products.add('Flat Track (FT)');
    }
    return products;
  }
}

@embedded
class ActiveLevels {
  bool lowerLevel = false;
  bool first = false;
  bool second = false;
  bool third = false;
  bool raised = false;

  List<String> levelsForMeasure() {
    List<String> levels = [];

    if (lowerLevel) {
      levels.add('LL');
    }
    if (first) {
      levels.add('First');
    }
    if (second) {
      levels.add('Second');
    }
    if (third) {
      levels.add('Third');
    }
    if (raised) {
      levels.add('Raised');
    }

    return levels;
  }
}

@embedded
class LaddersLifts {
  bool sixFt = false;
  bool eightFt = false;
  bool tenFt = false;
  bool twelveFt = false;
  bool twentyFourFtExten = false;
  bool thirtyTwoFtExten = false;
  bool fourtyFiveFtExten = false;
  bool littleGiant = false;
  bool standOff = false;
  bool walkingBoard = false;
  bool scaffolding = false;
  bool boomLift = false;
  bool ladderLift = false;
}

@embedded
class Tools {
  bool sdsSaw = false;
  bool sawzall = false;
  bool circularSaw = false;
  bool combinationSaw = false;
}

@embedded
class SafetyEquipment {
  bool fallProtection = false;
  bool hardHat = false;
  bool gloves = false;
  bool safetyGlasses = false;
  bool pants = false;
  bool safetyVest = false;
}

@embedded
class MeasurementInfo {
  List<String> notes = [];
  bool addOnMeasurements = false;
  List<MeasurementRecord> measurementRecords = [];
}

@embedded
class MeasurementRecord {
  int? openingNumber;
  String? openingType;
  String? level;
  String? product;
  String? spanDirection;
  String? span;
  String? nSpan;
  String? buildOutTop;
  String? buildOutSides;
  String? buildOutBot;
  String? stackLeft;
  String? stackRight;
  String? noteReference;

  MeasurementRecord();

  MeasurementRecord.defaults() {
    openingNumber = 0;
    openingType = '';
    level = '';
    product = '';
    span = '';
    nSpan = '';
    buildOutTop = '';
    buildOutSides = '';
    stackLeft = '';
    stackRight = '';
    noteReference = '';
  }
}
