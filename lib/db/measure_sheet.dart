import 'package:isar/isar.dart';

import '../components/measure_sheet_constants.dart';

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

  Map<String, dynamic> toMap() {
    return {
      'hardie': hardie,
      'stucco': stucco,
      'vinyl': vinyl,
      'stone': stone,
      'brick': brick,
      'concrete': concrete,
      'other': other,
      'otherSpecifics': otherSpecifics,
      'color': color
    };
  }


  static Map<String, String> sidingFieldsToDisplayMap = {
    'hardie': 'Hardie',
    'stucco': 'Stucco',
    'vinyl': 'Vinyl',
    'stone': 'Stone',
    'brick': 'Brick',
    'concrete': 'Concrete',
    'other': 'Other',
    'otherSpecifics': 'Other Specifics',
    'color': 'Color'
  };
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

  Map<String, dynamic> toMap() {
    return {
      'topAndBottom': topAndBottom,
      'allAround': allAround,
      'headerStickout': headerStickout,
      'headerFlush': headerFlush,
      'sillStickout': sillStickout,
      'sillFlush': sillFlush,
      'keystone': keystone,
      'none': none,
      'color': color
    };
  }

  static Map<String, String> trimFieldsToDisplayMap = {
    'topAndBottom': 'Top And Bottom',
    'allAround': 'All Around',
    'headerStickout': 'Header Stickout',
    'headerFlush': 'Header Flush',
    'sillStickout': 'Sill Stickout',
    'sillFlush': 'Sill Flush',
    'keystone': 'Keystone',
    'none': 'None',
    'color': 'Color'
  };
}

@embedded
class DoorDetails {
  bool roomUnderDoor = false;
  bool concreteFloor = false;
  bool brickStoneTileWithSandUnder = false;
  bool sillInPlace = false;
  bool brickStoneTileWithConcreteUnder = false;

  Map<String, dynamic> toMap() {
    return {
      'roomUnderDoor': roomUnderDoor,
      'concreteFloor': concreteFloor,
      'sillInPlace': sillInPlace,
      'brickStoneTileWithSandUnder': brickStoneTileWithSandUnder,
      'brickStoneTileWithConcreteUnder': brickStoneTileWithConcreteUnder
    };
  }

  static Map<String, String> doorDetailsFieldsToDisplayMap = {
    'roomUnderDoor': 'Room Under Door',
    'concreteFloor': 'Concrete Floor',
    'sillInPlace': 'Sill In Place',
    'brickStoneTileWithSandUnder': 'Brick/Stone/Tile With Sand Under',
    'brickStoneTileWithConcreteUnder': 'Brick/Stone/Tile With Concrete Under'
  };
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
  bool compositeBandB = false;
  bool compositeLouver = false;
  bool compositeRaisedPanel = false;
  bool compositeShaker = false;
  String? cutout;
  bool directMount = false;
  bool armorTrack = false;
  bool hHeader = false;
  bool flatTrack = false;

  // For opening info
  static bool requiresLeftRightStack(String productToCheck) {
    return productToCheck == ProductConstants.productAccordions;
  }

  static bool requiresWidthHeight(String productToCheck) {
    return ProductConstants.productsToCollectAddonMeasurements.contains(
        productToCheck);
  }

  static Map<String, String> productsFieldNameToDisplayMap = {
    'osb': 'OSB (O)',
    'galv': 'Galv (G)',
    'alum': 'Alum (Al)',
    'fabric': 'Fabric (F)',
    'accordions': 'Accordions (Ac)',
    'rolldown': 'Rolldown (R)',
    'clearPanels': 'Clear Panels',
    'screenUnder': 'Screen Under',
    'retractableScreen': 'Retractable Screen',
    'poolEnclosure': 'Pool Enclosure',
    'paintedCaps': 'Painted Caps',
    'bahArticulating': 'Bah Articulating (BA)',
    'decoBahama': 'Deco Bahama',
    'decoColonial': 'Deco Colonial',
    'ratedBahama2Inch': 'Rate Bahama 2"',
    'ratedBahama4Inch': 'Rate Bahama 4"',
    'ratedColonialLouvered': 'Rated Colonial Louvered',
    'ratedColonialBoardAndBatten': 'Rated Colonial B&B',
    'compositeBandB': 'Composite - Board and Batten',
    'compositeLouver': 'Composite - Louver',
    'compositeRaisedPanel': 'Composite - Raised Panel',
    'compositeShaker': 'Composite - Shaker',
    'directMount': 'Direct Mount (DM)',
    'armorTrack': 'Armor Track (AT)',
    'hHeader': '"H" Header (H)',
    'flatTrack': 'Flat Track (FT)',
  };

  List<String> productsToMeasure() {
    List<String> products = [];

    if (osb) {
      products.add(ProductConstants.productOsb);
    }
    if (galv) {
      products.add(ProductConstants.productGalv);
    }
    if (alum) {
      products.add(ProductConstants.productAlum);
    }
    if (fabric) {
      products.add(ProductConstants.productFabric);
    }
    if (accordions) {
      products.add(ProductConstants.productAccordions);
    }
    if (rolldown) {
      products.add(ProductConstants.productRolldown);
    }
    if (clearPanels) {
      products.add(ProductConstants.productClearPanels);
    }
    if (screenUnder) {
      products.add(ProductConstants.productScreenUnder);
    }
    if (retractableScreen) {
      products.add(ProductConstants.productRetractableScreen);
    }
    if (poolEnclosure) {
      products.add(ProductConstants.productPoolEnclosure);
    }
    if (paintedCaps) {
      products.add(ProductConstants.productPaintedCaps);
    }
    if (bahArticulating) {
      products.add(ProductConstants.productBahArticulating);
    }
    if (decoBahama) {
      products.add(ProductConstants.productDecoBahama);
    }
    if (decoColonial) {
      products.add(ProductConstants.productDecoColonial);
    }
    if (ratedBahama2Inch) {
      products.add(ProductConstants.productRatedBahama2Inch);
    }
    if (ratedBahama4Inch) {
      products.add(ProductConstants.productRatedBahama4Inch);
    }
    if (ratedColonialLouvered) {
      products.add(ProductConstants.productRatedColonialLouvered);
    }
    if (ratedColonialBoardAndBatten) {
      products.add(ProductConstants.productRatedColonialBandB);
    }
    if (compositeBandB) {
      products.add(ProductConstants.productCompositeBAndB);
    }
    if (compositeLouver) {
      products.add(ProductConstants.productCompositeLouver);
    }
    if (compositeRaisedPanel) {
      products.add(ProductConstants.productCompositeRaisedPanel);
    }
    if (compositeShaker) {
      products.add(ProductConstants.productCompositeShaker);
    }
    if (cutout != null) {
      products.add(cutout!);
    }
    if (directMount) {
      products.add(ProductConstants.productDirectMount);
    }
    if (armorTrack) {
      products.add(ProductConstants.productArmorTrack);
    }
    if (hHeader) {
      products.add(ProductConstants.productHHeader);
    }
    if (flatTrack) {
      products.add(ProductConstants.productFlatTrack);
    }
    return products;
  }

  Map<String, dynamic> toMap() {
    return {
      'paintBrand': paintBrand,
      'otherBrandSpecify': otherBrandSpecify,
      'paintCode': paintCode,
      'osb': osb,
      'galv': galv,
      'alum': alum,
      'fabric': fabric,
      'accordions': accordions,
      'rolldown': rolldown,
      'clearPanels': clearPanels,
      'screenUnder': screenUnder,
      'retractableScreen': retractableScreen,
      'poolEnclosure': poolEnclosure,
      'paintedCaps': paintedCaps,
      'bahArticulating': bahArticulating,
      'decoBahama': decoBahama,
      'decoColonial': decoColonial,
      'ratedBahama2Inch': ratedBahama2Inch,
      'ratedBahama4Inch': ratedBahama4Inch,
      'ratedColonialLouvered': ratedColonialLouvered,
      'ratedColonialBoardAndBatten': ratedColonialBoardAndBatten,
      'compositeBAndB': compositeBandB,
      'compositeLouver': compositeLouver,
      'compositeRaisedPanel': compositeRaisedPanel,
      'compositeShaker': compositeShaker,
      'cutout': cutout,
      'directMount': directMount,
      'armorTrack': armorTrack,
      'hHeader': hHeader,
      'flatTrack': flatTrack,
    };
  }
}

@embedded
class ActiveLevels {
  bool first = false;
  bool second = false;
  bool third = false;
  bool raised = false;

  List<String> levelsForMeasure() {
    List<String> levels = [];

    if (first) {
      levels.add('First');
    }
    if (second) {
      levels.add('Second');
    }
    if (third) {
      levels.add('Third');
    }
    // if (raised) {
    //   levels.add('Raised');
    // }

    return levels;
  }

  static Map<String, String> activeLevelsFieldsToDisplayMap = {
    'lowerLevel': 'Lower Level',
    'first': 'First',
    'second': 'Second',
    'third': 'Third',
    'raised': 'Raised'
  };

  Map<String, dynamic> toMap() {
    return {
      'first': first,
      'second': second,
      'third': third,
      'raised': raised,
    };
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

  static Map<String, String> laddersLiftsFieldsToDisplayMap = {
    'sixFt': '6 Foot',
    'eightFt': '8 Foot',
    'tenFt': '10 Foot',
    'twelveFt': '12 Foot',
    'twentyFourFtExten': '24 Foot Extension',
    'thirtyTwoFtExten': '32 Foot Extension',
    'fourtyFiveFtExten': '45 Foot Extension',
    'littleGiant': 'Little Giant',
    'standOff': 'Stand Off',
    'walkingBoard': 'Walking Board',
    'scaffolding': 'Scaffolding',
    'boomLift': 'Boom Lift',
    'ladderLift': 'Ladder lift',
  };

  Map<String, dynamic> toMap() {
    return {
      'sixFt': sixFt,
      'eightFt': eightFt,
      'tenFt': tenFt,
      'twelveFt': twelveFt,
      'twentyFourFtExten': twentyFourFtExten,
      'thirtyTwoFtExten': thirtyTwoFtExten,
      'fourtyFiveFtExten': fourtyFiveFtExten,
      'littleGiant': littleGiant,
      'standOff': standOff,
      'walkingBoard': walkingBoard,
      'scaffolding': scaffolding,
      'boomLift': boomLift,
      'ladderLift': ladderLift,
    };
  }
}

@embedded
class Tools {
  bool sdsSaw = false;
  bool sawzall = false;
  bool circularSaw = false;
  bool combinationSaw = false;

  static Map<String, String> toolsFieldsToDisplayMap = {
    'sdsSaw': 'SDS Saw',
    'sawzall': 'Sawzall',
    'circularSaw': 'Circular Saw',
    'combinationSaw': 'Combination Saw',
  };

  Map<String, dynamic> toMap() {
    return {
      'sdsSaw': sdsSaw,
      'sawzall': sawzall,
      'circularSaw': circularSaw,
      'combinationSaw': combinationSaw,
    };
  }
}

@embedded
class SafetyEquipment {
  bool fallProtection = false;
  bool hardHat = false;
  bool gloves = false;
  bool safetyGlasses = false;
  bool pants = false;
  bool safetyVest = false;

  static Map<String, String> safetyEquipmentFieldsToDisplayMap = {
    'fallProtection': 'Fall Protection',
    'hardHat': 'Hard Hat',
    'gloves': 'Gloves',
    'safetyGlasses': 'Safety Glasses',
    'pants': 'Pants',
    'safetyVest': 'Safety Vest',
  };

  Map<String, dynamic> toMap() {
    return {
      'fallProtection': fallProtection,
      'hardHat': hardHat,
      'gloves': gloves,
      'safetyGlasses': safetyGlasses,
      'pants': pants,
      'safetyVest': safetyVest,
    };
  }
}

@embedded
class MeasurementInfo {
  List<String> notes = [];
  List<MeasurementRecord> measurementRecords = [];
  bool addonMeasurementsOverride = false;
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
  String? width;
  String? height;
  String? buildOutTop;
  String? buildOutSides;
  String? buildOutBot;
  String? stackLeft;
  String? stackRight;
  String? noteReference;
  bool addOnMeasurement = false;

  MeasurementRecord();

  MeasurementRecord.defaults() {
    openingNumber = 0;
    openingType = '';
    level = '';
    product = '';
    span = '';
    nSpan = '';
    width = '';
    height = '';
    buildOutTop = '';
    buildOutSides = '';
    buildOutBot = '';
    stackLeft = '';
    stackRight = '';
    noteReference = '';
  }

  Map<String, dynamic> toMap() {
    return {
      'openingNumber': openingNumber,
      'openingType': openingType,
      'level': level,
      'product': product,
      'spanDirection': spanDirection,
      'span': span,
      'nSpan': nSpan,
      'width': width,
      'height': height,
      'buildOutTop': buildOutTop,
      'buildOutSides': buildOutSides,
      'buildOutBot': buildOutBot,
      'stackLeft': stackLeft,
      'stackRight': stackRight,
      'noteReference': noteReference,
    };
  }

}
