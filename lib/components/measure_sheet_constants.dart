class MeasureSheetConstants {}

class ProductConstants {
  // Product constants
  static const String productOsb = 'OSB (O)';
  static const String productGalv = 'Galv (G)';
  static const String productAlum = 'Alum (Al)';
  static const String productFabric = 'Fabric (F)';
  static const String productAccordions = 'Accordions (Ac)';
  static const String productRolldown = 'Rolldown (R)';
  static const String productClearPanels = 'Clear Panels';
  static const String productScreenUnder = 'Screen Under';
  static const String productRetractableScreen = 'Retractable Screen';
  static const String productPoolEnclosure = 'Pool Enclosure';
  static const String productPaintedCaps = 'Painted Caps';
  static const String productBahArticulating = 'Bah Articulating (BA)';
  static const String productDecoBahama = 'Deco Bahama';
  static const String productDecoColonial = 'Deco Colonial';
  static const String productRatedBahama2Inch = 'Rate Bahama 2"';
  static const String productRatedBahama4Inch = 'Rate Bahama 4"';
  static const String productRatedColonialLouvered = 'Rated Colonial Louvered';
  static const String productRatedColonialBandB = 'Rated Colonial B&B';
  static const String productComposite = 'Composite';
  static const String productDirectMount = 'Direct Mount (DM)';
  static const String productArmorTrack = 'Armor Track (AT)';
  static const String productHHeader = '"H" Header (H)';
  static const String productFlatTrack = 'Flat Track (FT)';
}

class FormConstants {
  // Form errors
  static const String jobNumberIsRequired = 'Job Number is required to continue.';
  static const String salesRepIsRequired = 'Sales Rep is required to continue.';
  static const String jobNumberAlreadyExists = 'Job Number already exists.';
  static const String sidingOtherSpecificsRequired = 'Other specifics required.';
  static const String productsOtherBrandRequired = 'Other specifics required.';
  static const String productsPaintCodeRequired = 'Paint code required.';
  static const String valueMustBeToQuarterInch = 'To .25';
  static const String valueMustBeDecimal = 'Ex. 55.5';

  // Form Controls & Labels
  static const String formControlJobNumber = 'jobNumber';
  static const String formLabelJobNumber = 'Job Number';
  static const String formControlSalesRep = 'salesRep';
  static const String formLabelSalesRep = 'Sales Rep';
  static const String formControlJobDate = 'jobDate';
  static const String formLabelJobDate = 'Job Date';
  static const String formControlCustomerName = 'customerName';
  static const String formLabelCustomerName = 'Customer Name';

  static const String formControlStreetNumber = 'streetNumber';
  static const String formLabelStreetNumber = 'Street Number';
  static const String formControlStreetName = 'streetName';
  static const String formLabelStreetName = 'Street Name';
  static const String formControlLotNumber = 'lotNumber';
  static const String formLabelLotNumber = 'Lot Number';
  static const String formControlCityTown = 'cityTown';
  static const String formLabelCityTown = 'City/Town';
  static const String formControlState = 'state';
  static const String formLabelState = 'State';
  static const String formControlZipCode = 'zipCode';
  static const String formLabelZipCode = 'Zip Code';
  static const String formControlPlantation = 'plantation';
  static const String formLabelPlantation = 'Plantation';
  static const String formControlMobile1 = 'mobile1';
  static const String formLabelMobile1 = 'Mobile 1';
  static const String formControlMobile2 = 'mobile2';
  static const String formLabelMobile2 = 'Mobile 2';
  static const String formControlHomePhone = 'homePhone';
  static const String formLabelHomePhone = 'Home Phone';
  static const String formControlBuilderSuperName = 'builderSuperName';
  static const String formLabelBuilderSuperName = 'Builder/Super Name';
  static const String formControlBuilderSuperPhone = 'builderSuperPhone';
  static const String formLabelBuilderSuperPhone = 'Builder/Super Phone';
  static const String formControlTentativeInstallDate = 'tentativeInstallDate';
  static const String formLabelTentativeInstallDate = 'Tentative Install Date';
  static const String formControlReadyForInstall = 'readyForInstall';
  static const String formLabelReadyForInstall = 'Ready For Install';
}

class SnackbarConstants {
  // Snackbar errors
  static const String snackbarJobNumberAlreadyExists = 'Job Number already exists.';
  static const String snackbarCustomerInformationErrors = 'Please correct the customer information errors.';
  static const String snackbarMeasurementInformationErrors = 'Please correct the measurement information errors.';
  static const String snackbarEquipmentInformationErrors = 'Please correct the equipment information errors.';
  static const String snackbarSidingErrors = 'Please correct the siding errors.';
  static const String snackbarProductErrors = 'Please correct the products errors.';
}