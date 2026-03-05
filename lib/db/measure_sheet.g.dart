// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measure_sheet.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMeasureSheetCollection on Isar {
  IsarCollection<MeasureSheet> get measureSheets => this.collection();
}

const MeasureSheetSchema = CollectionSchema(
  name: r'MeasureSheet',
  id: 2366279987977853226,
  properties: {
    r'activeLevels': PropertySchema(
      id: 0,
      name: r'activeLevels',
      type: IsarType.object,
      target: r'ActiveLevels',
    ),
    r'builderSuperName': PropertySchema(
      id: 1,
      name: r'builderSuperName',
      type: IsarType.string,
    ),
    r'builderSuperPhone': PropertySchema(
      id: 2,
      name: r'builderSuperPhone',
      type: IsarType.string,
    ),
    r'cityTown': PropertySchema(
      id: 3,
      name: r'cityTown',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'customerName': PropertySchema(
      id: 5,
      name: r'customerName',
      type: IsarType.string,
    ),
    r'doorDetails': PropertySchema(
      id: 6,
      name: r'doorDetails',
      type: IsarType.object,
      target: r'DoorDetails',
    ),
    r'homePhone': PropertySchema(
      id: 7,
      name: r'homePhone',
      type: IsarType.string,
    ),
    r'jobDate': PropertySchema(
      id: 8,
      name: r'jobDate',
      type: IsarType.dateTime,
    ),
    r'jobNumber': PropertySchema(
      id: 9,
      name: r'jobNumber',
      type: IsarType.string,
    ),
    r'laddersLifts': PropertySchema(
      id: 10,
      name: r'laddersLifts',
      type: IsarType.object,
      target: r'LaddersLifts',
    ),
    r'lotNumber': PropertySchema(
      id: 11,
      name: r'lotNumber',
      type: IsarType.string,
    ),
    r'measureDate': PropertySchema(
      id: 12,
      name: r'measureDate',
      type: IsarType.dateTime,
    ),
    r'measurementInfo': PropertySchema(
      id: 13,
      name: r'measurementInfo',
      type: IsarType.object,
      target: r'MeasurementInfo',
    ),
    r'measurer': PropertySchema(
      id: 14,
      name: r'measurer',
      type: IsarType.string,
    ),
    r'mobile1': PropertySchema(
      id: 15,
      name: r'mobile1',
      type: IsarType.string,
    ),
    r'mobile2': PropertySchema(
      id: 16,
      name: r'mobile2',
      type: IsarType.string,
    ),
    r'modifiedAt': PropertySchema(
      id: 17,
      name: r'modifiedAt',
      type: IsarType.dateTime,
    ),
    r'photosTaken': PropertySchema(
      id: 18,
      name: r'photosTaken',
      type: IsarType.bool,
    ),
    r'photosUploaded': PropertySchema(
      id: 19,
      name: r'photosUploaded',
      type: IsarType.bool,
    ),
    r'plantation': PropertySchema(
      id: 20,
      name: r'plantation',
      type: IsarType.string,
    ),
    r'productOptions': PropertySchema(
      id: 21,
      name: r'productOptions',
      type: IsarType.object,
      target: r'ProductOptions',
    ),
    r'readyForInstall': PropertySchema(
      id: 22,
      name: r'readyForInstall',
      type: IsarType.bool,
    ),
    r'safetyEquipment': PropertySchema(
      id: 23,
      name: r'safetyEquipment',
      type: IsarType.object,
      target: r'SafetyEquipment',
    ),
    r'salesInfoAccurate': PropertySchema(
      id: 24,
      name: r'salesInfoAccurate',
      type: IsarType.bool,
    ),
    r'salesRep': PropertySchema(
      id: 25,
      name: r'salesRep',
      type: IsarType.string,
    ),
    r'sidingOptions': PropertySchema(
      id: 26,
      name: r'sidingOptions',
      type: IsarType.object,
      target: r'SidingOptions',
    ),
    r'state': PropertySchema(
      id: 27,
      name: r'state',
      type: IsarType.string,
    ),
    r'streetName': PropertySchema(
      id: 28,
      name: r'streetName',
      type: IsarType.string,
    ),
    r'streetNumber': PropertySchema(
      id: 29,
      name: r'streetNumber',
      type: IsarType.string,
    ),
    r'tentativeInstallDate': PropertySchema(
      id: 30,
      name: r'tentativeInstallDate',
      type: IsarType.dateTime,
    ),
    r'tools': PropertySchema(
      id: 31,
      name: r'tools',
      type: IsarType.object,
      target: r'Tools',
    ),
    r'trimOptions': PropertySchema(
      id: 32,
      name: r'trimOptions',
      type: IsarType.object,
      target: r'TrimOptions',
    ),
    r'zipCode': PropertySchema(
      id: 33,
      name: r'zipCode',
      type: IsarType.string,
    )
  },
  estimateSize: _measureSheetEstimateSize,
  serialize: _measureSheetSerialize,
  deserialize: _measureSheetDeserialize,
  deserializeProp: _measureSheetDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'SidingOptions': SidingOptionsSchema,
    r'TrimOptions': TrimOptionsSchema,
    r'DoorDetails': DoorDetailsSchema,
    r'ProductOptions': ProductOptionsSchema,
    r'ActiveLevels': ActiveLevelsSchema,
    r'LaddersLifts': LaddersLiftsSchema,
    r'Tools': ToolsSchema,
    r'SafetyEquipment': SafetyEquipmentSchema,
    r'MeasurementInfo': MeasurementInfoSchema,
    r'MeasurementRecord': MeasurementRecordSchema
  },
  getId: _measureSheetGetId,
  getLinks: _measureSheetGetLinks,
  attach: _measureSheetAttach,
  version: '3.1.0+1',
);

int _measureSheetEstimateSize(
  MeasureSheet object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      ActiveLevelsSchema.estimateSize(
          object.activeLevels, allOffsets[ActiveLevels]!, allOffsets);
  {
    final value = object.builderSuperName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.builderSuperPhone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cityTown;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 +
      DoorDetailsSchema.estimateSize(
          object.doorDetails, allOffsets[DoorDetails]!, allOffsets);
  {
    final value = object.homePhone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.jobNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 +
      LaddersLiftsSchema.estimateSize(
          object.laddersLifts, allOffsets[LaddersLifts]!, allOffsets);
  {
    final value = object.lotNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 +
      MeasurementInfoSchema.estimateSize(
          object.measurementInfo, allOffsets[MeasurementInfo]!, allOffsets);
  {
    final value = object.measurer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mobile1;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mobile2;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.plantation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 +
      ProductOptionsSchema.estimateSize(
          object.productOptions, allOffsets[ProductOptions]!, allOffsets);
  bytesCount += 3 +
      SafetyEquipmentSchema.estimateSize(
          object.safetyEquipment, allOffsets[SafetyEquipment]!, allOffsets);
  {
    final value = object.salesRep;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 +
      SidingOptionsSchema.estimateSize(
          object.sidingOptions, allOffsets[SidingOptions]!, allOffsets);
  {
    final value = object.state;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.streetName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.streetNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 +
      ToolsSchema.estimateSize(object.tools, allOffsets[Tools]!, allOffsets);
  bytesCount += 3 +
      TrimOptionsSchema.estimateSize(
          object.trimOptions, allOffsets[TrimOptions]!, allOffsets);
  {
    final value = object.zipCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _measureSheetSerialize(
  MeasureSheet object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<ActiveLevels>(
    offsets[0],
    allOffsets,
    ActiveLevelsSchema.serialize,
    object.activeLevels,
  );
  writer.writeString(offsets[1], object.builderSuperName);
  writer.writeString(offsets[2], object.builderSuperPhone);
  writer.writeString(offsets[3], object.cityTown);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeString(offsets[5], object.customerName);
  writer.writeObject<DoorDetails>(
    offsets[6],
    allOffsets,
    DoorDetailsSchema.serialize,
    object.doorDetails,
  );
  writer.writeString(offsets[7], object.homePhone);
  writer.writeDateTime(offsets[8], object.jobDate);
  writer.writeString(offsets[9], object.jobNumber);
  writer.writeObject<LaddersLifts>(
    offsets[10],
    allOffsets,
    LaddersLiftsSchema.serialize,
    object.laddersLifts,
  );
  writer.writeString(offsets[11], object.lotNumber);
  writer.writeDateTime(offsets[12], object.measureDate);
  writer.writeObject<MeasurementInfo>(
    offsets[13],
    allOffsets,
    MeasurementInfoSchema.serialize,
    object.measurementInfo,
  );
  writer.writeString(offsets[14], object.measurer);
  writer.writeString(offsets[15], object.mobile1);
  writer.writeString(offsets[16], object.mobile2);
  writer.writeDateTime(offsets[17], object.modifiedAt);
  writer.writeBool(offsets[18], object.photosTaken);
  writer.writeBool(offsets[19], object.photosUploaded);
  writer.writeString(offsets[20], object.plantation);
  writer.writeObject<ProductOptions>(
    offsets[21],
    allOffsets,
    ProductOptionsSchema.serialize,
    object.productOptions,
  );
  writer.writeBool(offsets[22], object.readyForInstall);
  writer.writeObject<SafetyEquipment>(
    offsets[23],
    allOffsets,
    SafetyEquipmentSchema.serialize,
    object.safetyEquipment,
  );
  writer.writeBool(offsets[24], object.salesInfoAccurate);
  writer.writeString(offsets[25], object.salesRep);
  writer.writeObject<SidingOptions>(
    offsets[26],
    allOffsets,
    SidingOptionsSchema.serialize,
    object.sidingOptions,
  );
  writer.writeString(offsets[27], object.state);
  writer.writeString(offsets[28], object.streetName);
  writer.writeString(offsets[29], object.streetNumber);
  writer.writeDateTime(offsets[30], object.tentativeInstallDate);
  writer.writeObject<Tools>(
    offsets[31],
    allOffsets,
    ToolsSchema.serialize,
    object.tools,
  );
  writer.writeObject<TrimOptions>(
    offsets[32],
    allOffsets,
    TrimOptionsSchema.serialize,
    object.trimOptions,
  );
  writer.writeString(offsets[33], object.zipCode);
}

MeasureSheet _measureSheetDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MeasureSheet();
  object.activeLevels = reader.readObjectOrNull<ActiveLevels>(
        offsets[0],
        ActiveLevelsSchema.deserialize,
        allOffsets,
      ) ??
      ActiveLevels();
  object.builderSuperName = reader.readStringOrNull(offsets[1]);
  object.builderSuperPhone = reader.readStringOrNull(offsets[2]);
  object.cityTown = reader.readStringOrNull(offsets[3]);
  object.createdAt = reader.readDateTime(offsets[4]);
  object.customerName = reader.readStringOrNull(offsets[5]);
  object.doorDetails = reader.readObjectOrNull<DoorDetails>(
        offsets[6],
        DoorDetailsSchema.deserialize,
        allOffsets,
      ) ??
      DoorDetails();
  object.homePhone = reader.readStringOrNull(offsets[7]);
  object.id = id;
  object.jobDate = reader.readDateTimeOrNull(offsets[8]);
  object.jobNumber = reader.readStringOrNull(offsets[9]);
  object.laddersLifts = reader.readObjectOrNull<LaddersLifts>(
        offsets[10],
        LaddersLiftsSchema.deserialize,
        allOffsets,
      ) ??
      LaddersLifts();
  object.lotNumber = reader.readStringOrNull(offsets[11]);
  object.measureDate = reader.readDateTimeOrNull(offsets[12]);
  object.measurementInfo = reader.readObjectOrNull<MeasurementInfo>(
        offsets[13],
        MeasurementInfoSchema.deserialize,
        allOffsets,
      ) ??
      MeasurementInfo();
  object.measurer = reader.readStringOrNull(offsets[14]);
  object.mobile1 = reader.readStringOrNull(offsets[15]);
  object.mobile2 = reader.readStringOrNull(offsets[16]);
  object.modifiedAt = reader.readDateTime(offsets[17]);
  object.photosTaken = reader.readBool(offsets[18]);
  object.photosUploaded = reader.readBool(offsets[19]);
  object.plantation = reader.readStringOrNull(offsets[20]);
  object.productOptions = reader.readObjectOrNull<ProductOptions>(
        offsets[21],
        ProductOptionsSchema.deserialize,
        allOffsets,
      ) ??
      ProductOptions();
  object.readyForInstall = reader.readBool(offsets[22]);
  object.safetyEquipment = reader.readObjectOrNull<SafetyEquipment>(
        offsets[23],
        SafetyEquipmentSchema.deserialize,
        allOffsets,
      ) ??
      SafetyEquipment();
  object.salesInfoAccurate = reader.readBool(offsets[24]);
  object.salesRep = reader.readStringOrNull(offsets[25]);
  object.sidingOptions = reader.readObjectOrNull<SidingOptions>(
        offsets[26],
        SidingOptionsSchema.deserialize,
        allOffsets,
      ) ??
      SidingOptions();
  object.state = reader.readStringOrNull(offsets[27]);
  object.streetName = reader.readStringOrNull(offsets[28]);
  object.streetNumber = reader.readStringOrNull(offsets[29]);
  object.tentativeInstallDate = reader.readDateTimeOrNull(offsets[30]);
  object.tools = reader.readObjectOrNull<Tools>(
        offsets[31],
        ToolsSchema.deserialize,
        allOffsets,
      ) ??
      Tools();
  object.trimOptions = reader.readObjectOrNull<TrimOptions>(
        offsets[32],
        TrimOptionsSchema.deserialize,
        allOffsets,
      ) ??
      TrimOptions();
  object.zipCode = reader.readStringOrNull(offsets[33]);
  return object;
}

P _measureSheetDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<ActiveLevels>(
            offset,
            ActiveLevelsSchema.deserialize,
            allOffsets,
          ) ??
          ActiveLevels()) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readObjectOrNull<DoorDetails>(
            offset,
            DoorDetailsSchema.deserialize,
            allOffsets,
          ) ??
          DoorDetails()) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<LaddersLifts>(
            offset,
            LaddersLiftsSchema.deserialize,
            allOffsets,
          ) ??
          LaddersLifts()) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 13:
      return (reader.readObjectOrNull<MeasurementInfo>(
            offset,
            MeasurementInfoSchema.deserialize,
            allOffsets,
          ) ??
          MeasurementInfo()) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readDateTime(offset)) as P;
    case 18:
      return (reader.readBool(offset)) as P;
    case 19:
      return (reader.readBool(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readObjectOrNull<ProductOptions>(
            offset,
            ProductOptionsSchema.deserialize,
            allOffsets,
          ) ??
          ProductOptions()) as P;
    case 22:
      return (reader.readBool(offset)) as P;
    case 23:
      return (reader.readObjectOrNull<SafetyEquipment>(
            offset,
            SafetyEquipmentSchema.deserialize,
            allOffsets,
          ) ??
          SafetyEquipment()) as P;
    case 24:
      return (reader.readBool(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readObjectOrNull<SidingOptions>(
            offset,
            SidingOptionsSchema.deserialize,
            allOffsets,
          ) ??
          SidingOptions()) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 31:
      return (reader.readObjectOrNull<Tools>(
            offset,
            ToolsSchema.deserialize,
            allOffsets,
          ) ??
          Tools()) as P;
    case 32:
      return (reader.readObjectOrNull<TrimOptions>(
            offset,
            TrimOptionsSchema.deserialize,
            allOffsets,
          ) ??
          TrimOptions()) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _measureSheetGetId(MeasureSheet object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _measureSheetGetLinks(MeasureSheet object) {
  return [];
}

void _measureSheetAttach(
    IsarCollection<dynamic> col, Id id, MeasureSheet object) {
  object.id = id;
}

extension MeasureSheetQueryWhereSort
    on QueryBuilder<MeasureSheet, MeasureSheet, QWhere> {
  QueryBuilder<MeasureSheet, MeasureSheet, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MeasureSheetQueryWhere
    on QueryBuilder<MeasureSheet, MeasureSheet, QWhereClause> {
  QueryBuilder<MeasureSheet, MeasureSheet, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MeasureSheetQueryFilter
    on QueryBuilder<MeasureSheet, MeasureSheet, QFilterCondition> {
  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'builderSuperName',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'builderSuperName',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'builderSuperName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'builderSuperName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'builderSuperName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'builderSuperName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'builderSuperName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'builderSuperName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'builderSuperName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'builderSuperName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'builderSuperName',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'builderSuperName',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'builderSuperPhone',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'builderSuperPhone',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'builderSuperPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'builderSuperPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'builderSuperPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'builderSuperPhone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'builderSuperPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'builderSuperPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'builderSuperPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'builderSuperPhone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'builderSuperPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      builderSuperPhoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'builderSuperPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cityTown',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cityTown',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityTown',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cityTown',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cityTown',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cityTown',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cityTown',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cityTown',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cityTown',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cityTown',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityTown',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      cityTownIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cityTown',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      customerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'homePhone',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'homePhone',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homePhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'homePhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'homePhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'homePhone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'homePhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'homePhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'homePhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'homePhone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'homePhone',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      homePhoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'homePhone',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'jobDate',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'jobDate',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jobDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jobDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jobDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'jobNumber',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'jobNumber',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jobNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'jobNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      jobNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'jobNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lotNumber',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lotNumber',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lotNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lotNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lotNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lotNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lotNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lotNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lotNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lotNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lotNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      lotNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lotNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measureDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'measureDate',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measureDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'measureDate',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measureDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measureDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'measureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measureDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'measureDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measureDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'measureDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'measurer',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'measurer',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'measurer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'measurer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'measurer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurer',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'measurer',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mobile1',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mobile1',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mobile1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mobile1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mobile1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mobile1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mobile1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mobile1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mobile1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile1',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mobile1',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mobile2',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mobile2',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mobile2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mobile2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mobile2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mobile2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mobile2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mobile2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mobile2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile2',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      mobile2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mobile2',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      modifiedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modifiedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      modifiedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modifiedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      modifiedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modifiedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      modifiedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modifiedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      photosTakenEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photosTaken',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      photosUploadedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photosUploaded',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'plantation',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'plantation',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plantation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'plantation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'plantation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'plantation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'plantation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'plantation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'plantation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'plantation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'plantation',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      plantationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'plantation',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      readyForInstallEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readyForInstall',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesInfoAccurateEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salesInfoAccurate',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'salesRep',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'salesRep',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salesRep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'salesRep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'salesRep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'salesRep',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'salesRep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'salesRep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'salesRep',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'salesRep',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salesRep',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      salesRepIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'salesRep',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      stateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'state',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      stateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'state',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> stateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      stateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> stateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> stateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'state',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      stateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> stateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> stateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> stateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'state',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      stateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      stateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'streetName',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'streetName',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streetName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'streetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'streetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streetName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streetName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streetName',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streetName',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'streetNumber',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'streetNumber',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streetNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'streetNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'streetNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'streetNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'streetNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'streetNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'streetNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'streetNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'streetNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      streetNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'streetNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      tentativeInstallDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tentativeInstallDate',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      tentativeInstallDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tentativeInstallDate',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      tentativeInstallDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tentativeInstallDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      tentativeInstallDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tentativeInstallDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      tentativeInstallDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tentativeInstallDate',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      tentativeInstallDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tentativeInstallDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'zipCode',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'zipCode',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'zipCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'zipCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zipCode',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      zipCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'zipCode',
        value: '',
      ));
    });
  }
}

extension MeasureSheetQueryObject
    on QueryBuilder<MeasureSheet, MeasureSheet, QFilterCondition> {
  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> activeLevels(
      FilterQuery<ActiveLevels> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'activeLevels');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> doorDetails(
      FilterQuery<DoorDetails> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'doorDetails');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> laddersLifts(
      FilterQuery<LaddersLifts> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'laddersLifts');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      measurementInfo(FilterQuery<MeasurementInfo> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'measurementInfo');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      productOptions(FilterQuery<ProductOptions> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'productOptions');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition>
      safetyEquipment(FilterQuery<SafetyEquipment> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'safetyEquipment');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> sidingOptions(
      FilterQuery<SidingOptions> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'sidingOptions');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> tools(
      FilterQuery<Tools> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'tools');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterFilterCondition> trimOptions(
      FilterQuery<TrimOptions> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'trimOptions');
    });
  }
}

extension MeasureSheetQueryLinks
    on QueryBuilder<MeasureSheet, MeasureSheet, QFilterCondition> {}

extension MeasureSheetQuerySortBy
    on QueryBuilder<MeasureSheet, MeasureSheet, QSortBy> {
  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByBuilderSuperName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'builderSuperName', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByBuilderSuperNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'builderSuperName', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByBuilderSuperPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'builderSuperPhone', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByBuilderSuperPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'builderSuperPhone', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByCityTown() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityTown', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByCityTownDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityTown', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByHomePhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homePhone', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByHomePhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homePhone', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByJobDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobDate', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByJobDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobDate', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByJobNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobNumber', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByJobNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobNumber', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByLotNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lotNumber', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByLotNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lotNumber', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByMeasureDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measureDate', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByMeasureDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measureDate', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByMeasurer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurer', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByMeasurerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurer', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByMobile1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile1', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByMobile1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile1', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByMobile2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile2', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByMobile2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile2', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByModifiedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedAt', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByModifiedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedAt', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByPhotosTaken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photosTaken', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByPhotosTakenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photosTaken', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByPhotosUploaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photosUploaded', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByPhotosUploadedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photosUploaded', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByPlantation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantation', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByPlantationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantation', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByReadyForInstall() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readyForInstall', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByReadyForInstallDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readyForInstall', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortBySalesInfoAccurate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesInfoAccurate', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortBySalesInfoAccurateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesInfoAccurate', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortBySalesRep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesRep', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortBySalesRepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesRep', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByStreetName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetName', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByStreetNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetName', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByStreetNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNumber', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByStreetNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNumber', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByTentativeInstallDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tentativeInstallDate', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      sortByTentativeInstallDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tentativeInstallDate', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByZipCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipCode', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> sortByZipCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipCode', Sort.desc);
    });
  }
}

extension MeasureSheetQuerySortThenBy
    on QueryBuilder<MeasureSheet, MeasureSheet, QSortThenBy> {
  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByBuilderSuperName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'builderSuperName', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByBuilderSuperNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'builderSuperName', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByBuilderSuperPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'builderSuperPhone', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByBuilderSuperPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'builderSuperPhone', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByCityTown() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityTown', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByCityTownDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityTown', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByHomePhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homePhone', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByHomePhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'homePhone', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByJobDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobDate', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByJobDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobDate', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByJobNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobNumber', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByJobNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobNumber', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByLotNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lotNumber', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByLotNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lotNumber', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByMeasureDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measureDate', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByMeasureDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measureDate', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByMeasurer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurer', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByMeasurerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurer', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByMobile1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile1', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByMobile1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile1', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByMobile2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile2', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByMobile2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile2', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByModifiedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedAt', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByModifiedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedAt', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByPhotosTaken() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photosTaken', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByPhotosTakenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photosTaken', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByPhotosUploaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photosUploaded', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByPhotosUploadedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photosUploaded', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByPlantation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantation', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByPlantationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'plantation', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByReadyForInstall() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readyForInstall', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByReadyForInstallDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readyForInstall', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenBySalesInfoAccurate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesInfoAccurate', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenBySalesInfoAccurateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesInfoAccurate', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenBySalesRep() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesRep', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenBySalesRepDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesRep', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByStreetName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetName', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByStreetNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetName', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByStreetNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNumber', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByStreetNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'streetNumber', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByTentativeInstallDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tentativeInstallDate', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy>
      thenByTentativeInstallDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tentativeInstallDate', Sort.desc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByZipCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipCode', Sort.asc);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QAfterSortBy> thenByZipCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipCode', Sort.desc);
    });
  }
}

extension MeasureSheetQueryWhereDistinct
    on QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> {
  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct>
      distinctByBuilderSuperName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'builderSuperName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct>
      distinctByBuilderSuperPhone({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'builderSuperPhone',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByCityTown(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cityTown', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByCustomerName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByHomePhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'homePhone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByJobDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jobDate');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByJobNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jobNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByLotNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lotNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByMeasureDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'measureDate');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByMeasurer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'measurer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByMobile1(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mobile1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByMobile2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mobile2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByModifiedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modifiedAt');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByPhotosTaken() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photosTaken');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct>
      distinctByPhotosUploaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photosUploaded');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByPlantation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'plantation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct>
      distinctByReadyForInstall() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'readyForInstall');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct>
      distinctBySalesInfoAccurate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salesInfoAccurate');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctBySalesRep(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salesRep', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'state', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByStreetName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streetName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByStreetNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'streetNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct>
      distinctByTentativeInstallDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tentativeInstallDate');
    });
  }

  QueryBuilder<MeasureSheet, MeasureSheet, QDistinct> distinctByZipCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'zipCode', caseSensitive: caseSensitive);
    });
  }
}

extension MeasureSheetQueryProperty
    on QueryBuilder<MeasureSheet, MeasureSheet, QQueryProperty> {
  QueryBuilder<MeasureSheet, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MeasureSheet, ActiveLevels, QQueryOperations>
      activeLevelsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeLevels');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations>
      builderSuperNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'builderSuperName');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations>
      builderSuperPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'builderSuperPhone');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> cityTownProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cityTown');
    });
  }

  QueryBuilder<MeasureSheet, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> customerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerName');
    });
  }

  QueryBuilder<MeasureSheet, DoorDetails, QQueryOperations>
      doorDetailsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'doorDetails');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> homePhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'homePhone');
    });
  }

  QueryBuilder<MeasureSheet, DateTime?, QQueryOperations> jobDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jobDate');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> jobNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jobNumber');
    });
  }

  QueryBuilder<MeasureSheet, LaddersLifts, QQueryOperations>
      laddersLiftsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'laddersLifts');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> lotNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lotNumber');
    });
  }

  QueryBuilder<MeasureSheet, DateTime?, QQueryOperations>
      measureDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'measureDate');
    });
  }

  QueryBuilder<MeasureSheet, MeasurementInfo, QQueryOperations>
      measurementInfoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'measurementInfo');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> measurerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'measurer');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> mobile1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mobile1');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> mobile2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mobile2');
    });
  }

  QueryBuilder<MeasureSheet, DateTime, QQueryOperations> modifiedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modifiedAt');
    });
  }

  QueryBuilder<MeasureSheet, bool, QQueryOperations> photosTakenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photosTaken');
    });
  }

  QueryBuilder<MeasureSheet, bool, QQueryOperations> photosUploadedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photosUploaded');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> plantationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'plantation');
    });
  }

  QueryBuilder<MeasureSheet, ProductOptions, QQueryOperations>
      productOptionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productOptions');
    });
  }

  QueryBuilder<MeasureSheet, bool, QQueryOperations> readyForInstallProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readyForInstall');
    });
  }

  QueryBuilder<MeasureSheet, SafetyEquipment, QQueryOperations>
      safetyEquipmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'safetyEquipment');
    });
  }

  QueryBuilder<MeasureSheet, bool, QQueryOperations>
      salesInfoAccurateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salesInfoAccurate');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> salesRepProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salesRep');
    });
  }

  QueryBuilder<MeasureSheet, SidingOptions, QQueryOperations>
      sidingOptionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sidingOptions');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> stateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'state');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> streetNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streetName');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> streetNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'streetNumber');
    });
  }

  QueryBuilder<MeasureSheet, DateTime?, QQueryOperations>
      tentativeInstallDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tentativeInstallDate');
    });
  }

  QueryBuilder<MeasureSheet, Tools, QQueryOperations> toolsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tools');
    });
  }

  QueryBuilder<MeasureSheet, TrimOptions, QQueryOperations>
      trimOptionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trimOptions');
    });
  }

  QueryBuilder<MeasureSheet, String?, QQueryOperations> zipCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'zipCode');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SidingOptionsSchema = Schema(
  name: r'SidingOptions',
  id: 6878270659176051451,
  properties: {
    r'brick': PropertySchema(
      id: 0,
      name: r'brick',
      type: IsarType.bool,
    ),
    r'color': PropertySchema(
      id: 1,
      name: r'color',
      type: IsarType.string,
    ),
    r'concrete': PropertySchema(
      id: 2,
      name: r'concrete',
      type: IsarType.bool,
    ),
    r'hardie': PropertySchema(
      id: 3,
      name: r'hardie',
      type: IsarType.bool,
    ),
    r'other': PropertySchema(
      id: 4,
      name: r'other',
      type: IsarType.bool,
    ),
    r'otherSpecifics': PropertySchema(
      id: 5,
      name: r'otherSpecifics',
      type: IsarType.string,
    ),
    r'stone': PropertySchema(
      id: 6,
      name: r'stone',
      type: IsarType.bool,
    ),
    r'stucco': PropertySchema(
      id: 7,
      name: r'stucco',
      type: IsarType.bool,
    ),
    r'vinyl': PropertySchema(
      id: 8,
      name: r'vinyl',
      type: IsarType.bool,
    )
  },
  estimateSize: _sidingOptionsEstimateSize,
  serialize: _sidingOptionsSerialize,
  deserialize: _sidingOptionsDeserialize,
  deserializeProp: _sidingOptionsDeserializeProp,
);

int _sidingOptionsEstimateSize(
  SidingOptions object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.color;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.otherSpecifics;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _sidingOptionsSerialize(
  SidingOptions object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.brick);
  writer.writeString(offsets[1], object.color);
  writer.writeBool(offsets[2], object.concrete);
  writer.writeBool(offsets[3], object.hardie);
  writer.writeBool(offsets[4], object.other);
  writer.writeString(offsets[5], object.otherSpecifics);
  writer.writeBool(offsets[6], object.stone);
  writer.writeBool(offsets[7], object.stucco);
  writer.writeBool(offsets[8], object.vinyl);
}

SidingOptions _sidingOptionsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SidingOptions();
  object.brick = reader.readBool(offsets[0]);
  object.color = reader.readStringOrNull(offsets[1]);
  object.concrete = reader.readBool(offsets[2]);
  object.hardie = reader.readBool(offsets[3]);
  object.other = reader.readBool(offsets[4]);
  object.otherSpecifics = reader.readStringOrNull(offsets[5]);
  object.stone = reader.readBool(offsets[6]);
  object.stucco = reader.readBool(offsets[7]);
  object.vinyl = reader.readBool(offsets[8]);
  return object;
}

P _sidingOptionsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SidingOptionsQueryFilter
    on QueryBuilder<SidingOptions, SidingOptions, QFilterCondition> {
  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      brickEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brick',
        value: value,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'color',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      colorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      concreteEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'concrete',
        value: value,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      hardieEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hardie',
        value: value,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'other',
        value: value,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'otherSpecifics',
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'otherSpecifics',
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'otherSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'otherSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'otherSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'otherSpecifics',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'otherSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'otherSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'otherSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'otherSpecifics',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'otherSpecifics',
        value: '',
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      otherSpecificsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'otherSpecifics',
        value: '',
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      stoneEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stone',
        value: value,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      stuccoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stucco',
        value: value,
      ));
    });
  }

  QueryBuilder<SidingOptions, SidingOptions, QAfterFilterCondition>
      vinylEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vinyl',
        value: value,
      ));
    });
  }
}

extension SidingOptionsQueryObject
    on QueryBuilder<SidingOptions, SidingOptions, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TrimOptionsSchema = Schema(
  name: r'TrimOptions',
  id: -5575985015506982844,
  properties: {
    r'allAround': PropertySchema(
      id: 0,
      name: r'allAround',
      type: IsarType.bool,
    ),
    r'color': PropertySchema(
      id: 1,
      name: r'color',
      type: IsarType.string,
    ),
    r'headerFlush': PropertySchema(
      id: 2,
      name: r'headerFlush',
      type: IsarType.bool,
    ),
    r'headerStickout': PropertySchema(
      id: 3,
      name: r'headerStickout',
      type: IsarType.bool,
    ),
    r'keystone': PropertySchema(
      id: 4,
      name: r'keystone',
      type: IsarType.bool,
    ),
    r'none': PropertySchema(
      id: 5,
      name: r'none',
      type: IsarType.bool,
    ),
    r'sillFlush': PropertySchema(
      id: 6,
      name: r'sillFlush',
      type: IsarType.bool,
    ),
    r'sillStickout': PropertySchema(
      id: 7,
      name: r'sillStickout',
      type: IsarType.bool,
    ),
    r'topAndBottom': PropertySchema(
      id: 8,
      name: r'topAndBottom',
      type: IsarType.bool,
    )
  },
  estimateSize: _trimOptionsEstimateSize,
  serialize: _trimOptionsSerialize,
  deserialize: _trimOptionsDeserialize,
  deserializeProp: _trimOptionsDeserializeProp,
);

int _trimOptionsEstimateSize(
  TrimOptions object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.color;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _trimOptionsSerialize(
  TrimOptions object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.allAround);
  writer.writeString(offsets[1], object.color);
  writer.writeBool(offsets[2], object.headerFlush);
  writer.writeBool(offsets[3], object.headerStickout);
  writer.writeBool(offsets[4], object.keystone);
  writer.writeBool(offsets[5], object.none);
  writer.writeBool(offsets[6], object.sillFlush);
  writer.writeBool(offsets[7], object.sillStickout);
  writer.writeBool(offsets[8], object.topAndBottom);
}

TrimOptions _trimOptionsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TrimOptions();
  object.allAround = reader.readBool(offsets[0]);
  object.color = reader.readStringOrNull(offsets[1]);
  object.headerFlush = reader.readBool(offsets[2]);
  object.headerStickout = reader.readBool(offsets[3]);
  object.keystone = reader.readBool(offsets[4]);
  object.none = reader.readBool(offsets[5]);
  object.sillFlush = reader.readBool(offsets[6]);
  object.sillStickout = reader.readBool(offsets[7]);
  object.topAndBottom = reader.readBool(offsets[8]);
  return object;
}

P _trimOptionsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TrimOptionsQueryFilter
    on QueryBuilder<TrimOptions, TrimOptions, QFilterCondition> {
  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition>
      allAroundEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'allAround',
        value: value,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> colorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition>
      colorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'color',
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> colorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition>
      colorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> colorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> colorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> colorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> colorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> colorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'color',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> colorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'color',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> colorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition>
      colorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'color',
        value: '',
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition>
      headerFlushEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headerFlush',
        value: value,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition>
      headerStickoutEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headerStickout',
        value: value,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> keystoneEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'keystone',
        value: value,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition> noneEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'none',
        value: value,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition>
      sillFlushEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sillFlush',
        value: value,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition>
      sillStickoutEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sillStickout',
        value: value,
      ));
    });
  }

  QueryBuilder<TrimOptions, TrimOptions, QAfterFilterCondition>
      topAndBottomEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'topAndBottom',
        value: value,
      ));
    });
  }
}

extension TrimOptionsQueryObject
    on QueryBuilder<TrimOptions, TrimOptions, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DoorDetailsSchema = Schema(
  name: r'DoorDetails',
  id: 6989572273707803150,
  properties: {
    r'brickStoneTileWithConcreteUnder': PropertySchema(
      id: 0,
      name: r'brickStoneTileWithConcreteUnder',
      type: IsarType.bool,
    ),
    r'brickStoneTileWithSandUnder': PropertySchema(
      id: 1,
      name: r'brickStoneTileWithSandUnder',
      type: IsarType.bool,
    ),
    r'concreteFloor': PropertySchema(
      id: 2,
      name: r'concreteFloor',
      type: IsarType.bool,
    ),
    r'roomUnderDoor': PropertySchema(
      id: 3,
      name: r'roomUnderDoor',
      type: IsarType.bool,
    ),
    r'sillInPlace': PropertySchema(
      id: 4,
      name: r'sillInPlace',
      type: IsarType.bool,
    )
  },
  estimateSize: _doorDetailsEstimateSize,
  serialize: _doorDetailsSerialize,
  deserialize: _doorDetailsDeserialize,
  deserializeProp: _doorDetailsDeserializeProp,
);

int _doorDetailsEstimateSize(
  DoorDetails object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _doorDetailsSerialize(
  DoorDetails object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.brickStoneTileWithConcreteUnder);
  writer.writeBool(offsets[1], object.brickStoneTileWithSandUnder);
  writer.writeBool(offsets[2], object.concreteFloor);
  writer.writeBool(offsets[3], object.roomUnderDoor);
  writer.writeBool(offsets[4], object.sillInPlace);
}

DoorDetails _doorDetailsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DoorDetails();
  object.brickStoneTileWithConcreteUnder = reader.readBool(offsets[0]);
  object.brickStoneTileWithSandUnder = reader.readBool(offsets[1]);
  object.concreteFloor = reader.readBool(offsets[2]);
  object.roomUnderDoor = reader.readBool(offsets[3]);
  object.sillInPlace = reader.readBool(offsets[4]);
  return object;
}

P _doorDetailsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension DoorDetailsQueryFilter
    on QueryBuilder<DoorDetails, DoorDetails, QFilterCondition> {
  QueryBuilder<DoorDetails, DoorDetails, QAfterFilterCondition>
      brickStoneTileWithConcreteUnderEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brickStoneTileWithConcreteUnder',
        value: value,
      ));
    });
  }

  QueryBuilder<DoorDetails, DoorDetails, QAfterFilterCondition>
      brickStoneTileWithSandUnderEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brickStoneTileWithSandUnder',
        value: value,
      ));
    });
  }

  QueryBuilder<DoorDetails, DoorDetails, QAfterFilterCondition>
      concreteFloorEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'concreteFloor',
        value: value,
      ));
    });
  }

  QueryBuilder<DoorDetails, DoorDetails, QAfterFilterCondition>
      roomUnderDoorEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roomUnderDoor',
        value: value,
      ));
    });
  }

  QueryBuilder<DoorDetails, DoorDetails, QAfterFilterCondition>
      sillInPlaceEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sillInPlace',
        value: value,
      ));
    });
  }
}

extension DoorDetailsQueryObject
    on QueryBuilder<DoorDetails, DoorDetails, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ProductOptionsSchema = Schema(
  name: r'ProductOptions',
  id: 7378593267458085077,
  properties: {
    r'accordions': PropertySchema(
      id: 0,
      name: r'accordions',
      type: IsarType.bool,
    ),
    r'alum': PropertySchema(
      id: 1,
      name: r'alum',
      type: IsarType.bool,
    ),
    r'armorTrack': PropertySchema(
      id: 2,
      name: r'armorTrack',
      type: IsarType.bool,
    ),
    r'bahArticulating': PropertySchema(
      id: 3,
      name: r'bahArticulating',
      type: IsarType.bool,
    ),
    r'clearPanels': PropertySchema(
      id: 4,
      name: r'clearPanels',
      type: IsarType.bool,
    ),
    r'composite': PropertySchema(
      id: 5,
      name: r'composite',
      type: IsarType.bool,
    ),
    r'compositeSpecifics': PropertySchema(
      id: 6,
      name: r'compositeSpecifics',
      type: IsarType.string,
    ),
    r'cutout': PropertySchema(
      id: 7,
      name: r'cutout',
      type: IsarType.string,
    ),
    r'decoBahama': PropertySchema(
      id: 8,
      name: r'decoBahama',
      type: IsarType.bool,
    ),
    r'decoColonial': PropertySchema(
      id: 9,
      name: r'decoColonial',
      type: IsarType.bool,
    ),
    r'directMount': PropertySchema(
      id: 10,
      name: r'directMount',
      type: IsarType.bool,
    ),
    r'fabric': PropertySchema(
      id: 11,
      name: r'fabric',
      type: IsarType.bool,
    ),
    r'flatTrack': PropertySchema(
      id: 12,
      name: r'flatTrack',
      type: IsarType.bool,
    ),
    r'galv': PropertySchema(
      id: 13,
      name: r'galv',
      type: IsarType.bool,
    ),
    r'hHeader': PropertySchema(
      id: 14,
      name: r'hHeader',
      type: IsarType.bool,
    ),
    r'leftStack': PropertySchema(
      id: 15,
      name: r'leftStack',
      type: IsarType.string,
    ),
    r'osb': PropertySchema(
      id: 16,
      name: r'osb',
      type: IsarType.bool,
    ),
    r'otherBrandSpecify': PropertySchema(
      id: 17,
      name: r'otherBrandSpecify',
      type: IsarType.string,
    ),
    r'paintBrand': PropertySchema(
      id: 18,
      name: r'paintBrand',
      type: IsarType.string,
    ),
    r'paintCode': PropertySchema(
      id: 19,
      name: r'paintCode',
      type: IsarType.string,
    ),
    r'paintedCaps': PropertySchema(
      id: 20,
      name: r'paintedCaps',
      type: IsarType.bool,
    ),
    r'poolEnclosure': PropertySchema(
      id: 21,
      name: r'poolEnclosure',
      type: IsarType.bool,
    ),
    r'ratedBahama2Inch': PropertySchema(
      id: 22,
      name: r'ratedBahama2Inch',
      type: IsarType.bool,
    ),
    r'ratedBahama4Inch': PropertySchema(
      id: 23,
      name: r'ratedBahama4Inch',
      type: IsarType.bool,
    ),
    r'ratedColonialBoardAndBatten': PropertySchema(
      id: 24,
      name: r'ratedColonialBoardAndBatten',
      type: IsarType.bool,
    ),
    r'ratedColonialLouvered': PropertySchema(
      id: 25,
      name: r'ratedColonialLouvered',
      type: IsarType.bool,
    ),
    r'retractableScreen': PropertySchema(
      id: 26,
      name: r'retractableScreen',
      type: IsarType.bool,
    ),
    r'rightStack': PropertySchema(
      id: 27,
      name: r'rightStack',
      type: IsarType.string,
    ),
    r'rolldown': PropertySchema(
      id: 28,
      name: r'rolldown',
      type: IsarType.bool,
    ),
    r'screenUnder': PropertySchema(
      id: 29,
      name: r'screenUnder',
      type: IsarType.bool,
    )
  },
  estimateSize: _productOptionsEstimateSize,
  serialize: _productOptionsSerialize,
  deserialize: _productOptionsDeserialize,
  deserializeProp: _productOptionsDeserializeProp,
);

int _productOptionsEstimateSize(
  ProductOptions object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.compositeSpecifics;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cutout;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.leftStack;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.otherBrandSpecify;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.paintBrand;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.paintCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.rightStack;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _productOptionsSerialize(
  ProductOptions object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.accordions);
  writer.writeBool(offsets[1], object.alum);
  writer.writeBool(offsets[2], object.armorTrack);
  writer.writeBool(offsets[3], object.bahArticulating);
  writer.writeBool(offsets[4], object.clearPanels);
  writer.writeBool(offsets[5], object.composite);
  writer.writeString(offsets[6], object.compositeSpecifics);
  writer.writeString(offsets[7], object.cutout);
  writer.writeBool(offsets[8], object.decoBahama);
  writer.writeBool(offsets[9], object.decoColonial);
  writer.writeBool(offsets[10], object.directMount);
  writer.writeBool(offsets[11], object.fabric);
  writer.writeBool(offsets[12], object.flatTrack);
  writer.writeBool(offsets[13], object.galv);
  writer.writeBool(offsets[14], object.hHeader);
  writer.writeString(offsets[15], object.leftStack);
  writer.writeBool(offsets[16], object.osb);
  writer.writeString(offsets[17], object.otherBrandSpecify);
  writer.writeString(offsets[18], object.paintBrand);
  writer.writeString(offsets[19], object.paintCode);
  writer.writeBool(offsets[20], object.paintedCaps);
  writer.writeBool(offsets[21], object.poolEnclosure);
  writer.writeBool(offsets[22], object.ratedBahama2Inch);
  writer.writeBool(offsets[23], object.ratedBahama4Inch);
  writer.writeBool(offsets[24], object.ratedColonialBoardAndBatten);
  writer.writeBool(offsets[25], object.ratedColonialLouvered);
  writer.writeBool(offsets[26], object.retractableScreen);
  writer.writeString(offsets[27], object.rightStack);
  writer.writeBool(offsets[28], object.rolldown);
  writer.writeBool(offsets[29], object.screenUnder);
}

ProductOptions _productOptionsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductOptions();
  object.accordions = reader.readBool(offsets[0]);
  object.alum = reader.readBool(offsets[1]);
  object.armorTrack = reader.readBool(offsets[2]);
  object.bahArticulating = reader.readBool(offsets[3]);
  object.clearPanels = reader.readBool(offsets[4]);
  object.composite = reader.readBool(offsets[5]);
  object.compositeSpecifics = reader.readStringOrNull(offsets[6]);
  object.cutout = reader.readStringOrNull(offsets[7]);
  object.decoBahama = reader.readBool(offsets[8]);
  object.decoColonial = reader.readBool(offsets[9]);
  object.directMount = reader.readBool(offsets[10]);
  object.fabric = reader.readBool(offsets[11]);
  object.flatTrack = reader.readBool(offsets[12]);
  object.galv = reader.readBool(offsets[13]);
  object.hHeader = reader.readBool(offsets[14]);
  object.leftStack = reader.readStringOrNull(offsets[15]);
  object.osb = reader.readBool(offsets[16]);
  object.otherBrandSpecify = reader.readStringOrNull(offsets[17]);
  object.paintBrand = reader.readStringOrNull(offsets[18]);
  object.paintCode = reader.readStringOrNull(offsets[19]);
  object.paintedCaps = reader.readBool(offsets[20]);
  object.poolEnclosure = reader.readBool(offsets[21]);
  object.ratedBahama2Inch = reader.readBool(offsets[22]);
  object.ratedBahama4Inch = reader.readBool(offsets[23]);
  object.ratedColonialBoardAndBatten = reader.readBool(offsets[24]);
  object.ratedColonialLouvered = reader.readBool(offsets[25]);
  object.retractableScreen = reader.readBool(offsets[26]);
  object.rightStack = reader.readStringOrNull(offsets[27]);
  object.rolldown = reader.readBool(offsets[28]);
  object.screenUnder = reader.readBool(offsets[29]);
  return object;
}

P _productOptionsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readBool(offset)) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    case 13:
      return (reader.readBool(offset)) as P;
    case 14:
      return (reader.readBool(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readBool(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readBool(offset)) as P;
    case 21:
      return (reader.readBool(offset)) as P;
    case 22:
      return (reader.readBool(offset)) as P;
    case 23:
      return (reader.readBool(offset)) as P;
    case 24:
      return (reader.readBool(offset)) as P;
    case 25:
      return (reader.readBool(offset)) as P;
    case 26:
      return (reader.readBool(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readBool(offset)) as P;
    case 29:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ProductOptionsQueryFilter
    on QueryBuilder<ProductOptions, ProductOptions, QFilterCondition> {
  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      accordionsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accordions',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      alumEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alum',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      armorTrackEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'armorTrack',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      bahArticulatingEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bahArticulating',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      clearPanelsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clearPanels',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'composite',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'compositeSpecifics',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'compositeSpecifics',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'compositeSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'compositeSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'compositeSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'compositeSpecifics',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'compositeSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'compositeSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'compositeSpecifics',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'compositeSpecifics',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'compositeSpecifics',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      compositeSpecificsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'compositeSpecifics',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cutout',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cutout',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cutout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cutout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cutout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cutout',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cutout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cutout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cutout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cutout',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cutout',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      cutoutIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cutout',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      decoBahamaEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'decoBahama',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      decoColonialEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'decoColonial',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      directMountEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'directMount',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      fabricEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fabric',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      flatTrackEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flatTrack',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      galvEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'galv',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      hHeaderEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hHeader',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leftStack',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leftStack',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackEqualTo(String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackGreaterThan(String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackLessThan(String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackBetween(String? lower,
      String? upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftStack',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackStartsWith(String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'leftStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackEndsWith(String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'leftStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'leftStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'leftStack',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftStack',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  leftStackIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'leftStack',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      osbEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'osb',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'otherBrandSpecify',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'otherBrandSpecify',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'otherBrandSpecify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'otherBrandSpecify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'otherBrandSpecify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'otherBrandSpecify',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'otherBrandSpecify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'otherBrandSpecify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'otherBrandSpecify',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'otherBrandSpecify',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'otherBrandSpecify',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      otherBrandSpecifyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'otherBrandSpecify',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paintBrand',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paintBrand',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paintBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paintBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paintBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paintBrand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paintBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paintBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paintBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paintBrand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paintBrand',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintBrandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paintBrand',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paintCode',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paintCode',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paintCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paintCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paintCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paintCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paintCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paintCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paintCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paintCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paintCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paintCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      paintedCapsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paintedCaps',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      poolEnclosureEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'poolEnclosure',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      ratedBahama2InchEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ratedBahama2Inch',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      ratedBahama4InchEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ratedBahama4Inch',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      ratedColonialBoardAndBattenEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ratedColonialBoardAndBatten',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      ratedColonialLouveredEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ratedColonialLouvered',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      retractableScreenEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'retractableScreen',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rightStack',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rightStack',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackEqualTo(String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackGreaterThan(String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackLessThan(String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackBetween(String? lower,
      String? upper, {
        bool includeLower = true,
        bool includeUpper = true,
        bool caseSensitive = true,
      }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightStack',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackStartsWith(String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rightStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackEndsWith(String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rightStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rightStack',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rightStack',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightStack',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
  rightStackIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rightStack',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      rolldownEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rolldown',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductOptions, ProductOptions, QAfterFilterCondition>
      screenUnderEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screenUnder',
        value: value,
      ));
    });
  }
}

extension ProductOptionsQueryObject
    on QueryBuilder<ProductOptions, ProductOptions, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ActiveLevelsSchema = Schema(
  name: r'ActiveLevels',
  id: 4260841403625721732,
  properties: {
    r'first': PropertySchema(
      id: 0,
      name: r'first',
      type: IsarType.bool,
    ),
    r'lowerLevel': PropertySchema(
      id: 1,
      name: r'lowerLevel',
      type: IsarType.bool,
    ),
    r'raised': PropertySchema(
      id: 2,
      name: r'raised',
      type: IsarType.bool,
    ),
    r'second': PropertySchema(
      id: 3,
      name: r'second',
      type: IsarType.bool,
    ),
    r'third': PropertySchema(
      id: 4,
      name: r'third',
      type: IsarType.bool,
    )
  },
  estimateSize: _activeLevelsEstimateSize,
  serialize: _activeLevelsSerialize,
  deserialize: _activeLevelsDeserialize,
  deserializeProp: _activeLevelsDeserializeProp,
);

int _activeLevelsEstimateSize(
  ActiveLevels object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _activeLevelsSerialize(
  ActiveLevels object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.first);
  writer.writeBool(offsets[1], object.lowerLevel);
  writer.writeBool(offsets[2], object.raised);
  writer.writeBool(offsets[3], object.second);
  writer.writeBool(offsets[4], object.third);
}

ActiveLevels _activeLevelsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ActiveLevels();
  object.first = reader.readBool(offsets[0]);
  object.lowerLevel = reader.readBool(offsets[1]);
  object.raised = reader.readBool(offsets[2]);
  object.second = reader.readBool(offsets[3]);
  object.third = reader.readBool(offsets[4]);
  return object;
}

P _activeLevelsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ActiveLevelsQueryFilter
    on QueryBuilder<ActiveLevels, ActiveLevels, QFilterCondition> {
  QueryBuilder<ActiveLevels, ActiveLevels, QAfterFilterCondition> firstEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'first',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveLevels, ActiveLevels, QAfterFilterCondition>
      lowerLevelEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lowerLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveLevels, ActiveLevels, QAfterFilterCondition> raisedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'raised',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveLevels, ActiveLevels, QAfterFilterCondition> secondEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'second',
        value: value,
      ));
    });
  }

  QueryBuilder<ActiveLevels, ActiveLevels, QAfterFilterCondition> thirdEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'third',
        value: value,
      ));
    });
  }
}

extension ActiveLevelsQueryObject
    on QueryBuilder<ActiveLevels, ActiveLevels, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const LaddersLiftsSchema = Schema(
  name: r'LaddersLifts',
  id: -1140058075919336701,
  properties: {
    r'boomLift': PropertySchema(
      id: 0,
      name: r'boomLift',
      type: IsarType.bool,
    ),
    r'eightFt': PropertySchema(
      id: 1,
      name: r'eightFt',
      type: IsarType.bool,
    ),
    r'fourtyFiveFtExten': PropertySchema(
      id: 2,
      name: r'fourtyFiveFtExten',
      type: IsarType.bool,
    ),
    r'ladderLift': PropertySchema(
      id: 3,
      name: r'ladderLift',
      type: IsarType.bool,
    ),
    r'littleGiant': PropertySchema(
      id: 4,
      name: r'littleGiant',
      type: IsarType.bool,
    ),
    r'scaffolding': PropertySchema(
      id: 5,
      name: r'scaffolding',
      type: IsarType.bool,
    ),
    r'sixFt': PropertySchema(
      id: 6,
      name: r'sixFt',
      type: IsarType.bool,
    ),
    r'standOff': PropertySchema(
      id: 7,
      name: r'standOff',
      type: IsarType.bool,
    ),
    r'tenFt': PropertySchema(
      id: 8,
      name: r'tenFt',
      type: IsarType.bool,
    ),
    r'thirtyTwoFtExten': PropertySchema(
      id: 9,
      name: r'thirtyTwoFtExten',
      type: IsarType.bool,
    ),
    r'twelveFt': PropertySchema(
      id: 10,
      name: r'twelveFt',
      type: IsarType.bool,
    ),
    r'twentyFourFtExten': PropertySchema(
      id: 11,
      name: r'twentyFourFtExten',
      type: IsarType.bool,
    ),
    r'walkingBoard': PropertySchema(
      id: 12,
      name: r'walkingBoard',
      type: IsarType.bool,
    )
  },
  estimateSize: _laddersLiftsEstimateSize,
  serialize: _laddersLiftsSerialize,
  deserialize: _laddersLiftsDeserialize,
  deserializeProp: _laddersLiftsDeserializeProp,
);

int _laddersLiftsEstimateSize(
  LaddersLifts object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _laddersLiftsSerialize(
  LaddersLifts object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.boomLift);
  writer.writeBool(offsets[1], object.eightFt);
  writer.writeBool(offsets[2], object.fourtyFiveFtExten);
  writer.writeBool(offsets[3], object.ladderLift);
  writer.writeBool(offsets[4], object.littleGiant);
  writer.writeBool(offsets[5], object.scaffolding);
  writer.writeBool(offsets[6], object.sixFt);
  writer.writeBool(offsets[7], object.standOff);
  writer.writeBool(offsets[8], object.tenFt);
  writer.writeBool(offsets[9], object.thirtyTwoFtExten);
  writer.writeBool(offsets[10], object.twelveFt);
  writer.writeBool(offsets[11], object.twentyFourFtExten);
  writer.writeBool(offsets[12], object.walkingBoard);
}

LaddersLifts _laddersLiftsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LaddersLifts();
  object.boomLift = reader.readBool(offsets[0]);
  object.eightFt = reader.readBool(offsets[1]);
  object.fourtyFiveFtExten = reader.readBool(offsets[2]);
  object.ladderLift = reader.readBool(offsets[3]);
  object.littleGiant = reader.readBool(offsets[4]);
  object.scaffolding = reader.readBool(offsets[5]);
  object.sixFt = reader.readBool(offsets[6]);
  object.standOff = reader.readBool(offsets[7]);
  object.tenFt = reader.readBool(offsets[8]);
  object.thirtyTwoFtExten = reader.readBool(offsets[9]);
  object.twelveFt = reader.readBool(offsets[10]);
  object.twentyFourFtExten = reader.readBool(offsets[11]);
  object.walkingBoard = reader.readBool(offsets[12]);
  return object;
}

P _laddersLiftsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readBool(offset)) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension LaddersLiftsQueryFilter
    on QueryBuilder<LaddersLifts, LaddersLifts, QFilterCondition> {
  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      boomLiftEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'boomLift',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      eightFtEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eightFt',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      fourtyFiveFtExtenEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fourtyFiveFtExten',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      ladderLiftEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ladderLift',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      littleGiantEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'littleGiant',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      scaffoldingEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scaffolding',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition> sixFtEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sixFt',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      standOffEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'standOff',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition> tenFtEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tenFt',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      thirtyTwoFtExtenEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thirtyTwoFtExten',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      twelveFtEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'twelveFt',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      twentyFourFtExtenEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'twentyFourFtExten',
        value: value,
      ));
    });
  }

  QueryBuilder<LaddersLifts, LaddersLifts, QAfterFilterCondition>
      walkingBoardEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'walkingBoard',
        value: value,
      ));
    });
  }
}

extension LaddersLiftsQueryObject
    on QueryBuilder<LaddersLifts, LaddersLifts, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ToolsSchema = Schema(
  name: r'Tools',
  id: -5046983641869005635,
  properties: {
    r'circularSaw': PropertySchema(
      id: 0,
      name: r'circularSaw',
      type: IsarType.bool,
    ),
    r'combinationSaw': PropertySchema(
      id: 1,
      name: r'combinationSaw',
      type: IsarType.bool,
    ),
    r'sawzall': PropertySchema(
      id: 2,
      name: r'sawzall',
      type: IsarType.bool,
    ),
    r'sdsSaw': PropertySchema(
      id: 3,
      name: r'sdsSaw',
      type: IsarType.bool,
    )
  },
  estimateSize: _toolsEstimateSize,
  serialize: _toolsSerialize,
  deserialize: _toolsDeserialize,
  deserializeProp: _toolsDeserializeProp,
);

int _toolsEstimateSize(
  Tools object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _toolsSerialize(
  Tools object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.circularSaw);
  writer.writeBool(offsets[1], object.combinationSaw);
  writer.writeBool(offsets[2], object.sawzall);
  writer.writeBool(offsets[3], object.sdsSaw);
}

Tools _toolsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Tools();
  object.circularSaw = reader.readBool(offsets[0]);
  object.combinationSaw = reader.readBool(offsets[1]);
  object.sawzall = reader.readBool(offsets[2]);
  object.sdsSaw = reader.readBool(offsets[3]);
  return object;
}

P _toolsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ToolsQueryFilter on QueryBuilder<Tools, Tools, QFilterCondition> {
  QueryBuilder<Tools, Tools, QAfterFilterCondition> circularSawEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'circularSaw',
        value: value,
      ));
    });
  }

  QueryBuilder<Tools, Tools, QAfterFilterCondition> combinationSawEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'combinationSaw',
        value: value,
      ));
    });
  }

  QueryBuilder<Tools, Tools, QAfterFilterCondition> sawzallEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sawzall',
        value: value,
      ));
    });
  }

  QueryBuilder<Tools, Tools, QAfterFilterCondition> sdsSawEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sdsSaw',
        value: value,
      ));
    });
  }
}

extension ToolsQueryObject on QueryBuilder<Tools, Tools, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SafetyEquipmentSchema = Schema(
  name: r'SafetyEquipment',
  id: -5020251184023278836,
  properties: {
    r'fallProtection': PropertySchema(
      id: 0,
      name: r'fallProtection',
      type: IsarType.bool,
    ),
    r'gloves': PropertySchema(
      id: 1,
      name: r'gloves',
      type: IsarType.bool,
    ),
    r'hardHat': PropertySchema(
      id: 2,
      name: r'hardHat',
      type: IsarType.bool,
    ),
    r'pants': PropertySchema(
      id: 3,
      name: r'pants',
      type: IsarType.bool,
    ),
    r'safetyGlasses': PropertySchema(
      id: 4,
      name: r'safetyGlasses',
      type: IsarType.bool,
    ),
    r'safetyVest': PropertySchema(
      id: 5,
      name: r'safetyVest',
      type: IsarType.bool,
    )
  },
  estimateSize: _safetyEquipmentEstimateSize,
  serialize: _safetyEquipmentSerialize,
  deserialize: _safetyEquipmentDeserialize,
  deserializeProp: _safetyEquipmentDeserializeProp,
);

int _safetyEquipmentEstimateSize(
  SafetyEquipment object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _safetyEquipmentSerialize(
  SafetyEquipment object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.fallProtection);
  writer.writeBool(offsets[1], object.gloves);
  writer.writeBool(offsets[2], object.hardHat);
  writer.writeBool(offsets[3], object.pants);
  writer.writeBool(offsets[4], object.safetyGlasses);
  writer.writeBool(offsets[5], object.safetyVest);
}

SafetyEquipment _safetyEquipmentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SafetyEquipment();
  object.fallProtection = reader.readBool(offsets[0]);
  object.gloves = reader.readBool(offsets[1]);
  object.hardHat = reader.readBool(offsets[2]);
  object.pants = reader.readBool(offsets[3]);
  object.safetyGlasses = reader.readBool(offsets[4]);
  object.safetyVest = reader.readBool(offsets[5]);
  return object;
}

P _safetyEquipmentDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SafetyEquipmentQueryFilter
    on QueryBuilder<SafetyEquipment, SafetyEquipment, QFilterCondition> {
  QueryBuilder<SafetyEquipment, SafetyEquipment, QAfterFilterCondition>
      fallProtectionEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fallProtection',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEquipment, SafetyEquipment, QAfterFilterCondition>
      glovesEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gloves',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEquipment, SafetyEquipment, QAfterFilterCondition>
      hardHatEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hardHat',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEquipment, SafetyEquipment, QAfterFilterCondition>
      pantsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pants',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEquipment, SafetyEquipment, QAfterFilterCondition>
      safetyGlassesEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'safetyGlasses',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEquipment, SafetyEquipment, QAfterFilterCondition>
      safetyVestEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'safetyVest',
        value: value,
      ));
    });
  }
}

extension SafetyEquipmentQueryObject
    on QueryBuilder<SafetyEquipment, SafetyEquipment, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MeasurementInfoSchema = Schema(
  name: r'MeasurementInfo',
  id: -222654696263155363,
  properties: {
    r'addOnMeasurements': PropertySchema(
      id: 0,
      name: r'addOnMeasurements',
      type: IsarType.bool,
    ),
    r'measurementRecords': PropertySchema(
      id: 1,
      name: r'measurementRecords',
      type: IsarType.objectList,
      target: r'MeasurementRecord',
    ),
    r'notes': PropertySchema(
      id: 2,
      name: r'notes',
      type: IsarType.stringList,
    )
  },
  estimateSize: _measurementInfoEstimateSize,
  serialize: _measurementInfoSerialize,
  deserialize: _measurementInfoDeserialize,
  deserializeProp: _measurementInfoDeserializeProp,
);

int _measurementInfoEstimateSize(
  MeasurementInfo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.measurementRecords.length * 3;
  {
    final offsets = allOffsets[MeasurementRecord]!;
    for (var i = 0; i < object.measurementRecords.length; i++) {
      final value = object.measurementRecords[i];
      bytesCount +=
          MeasurementRecordSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.notes.length * 3;
  {
    for (var i = 0; i < object.notes.length; i++) {
      final value = object.notes[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _measurementInfoSerialize(
  MeasurementInfo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.addOnMeasurements);
  writer.writeObjectList<MeasurementRecord>(
    offsets[1],
    allOffsets,
    MeasurementRecordSchema.serialize,
    object.measurementRecords,
  );
  writer.writeStringList(offsets[2], object.notes);
}

MeasurementInfo _measurementInfoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MeasurementInfo();
  object.addOnMeasurements = reader.readBool(offsets[0]);
  object.measurementRecords = reader.readObjectList<MeasurementRecord>(
        offsets[1],
        MeasurementRecordSchema.deserialize,
        allOffsets,
        MeasurementRecord(),
      ) ??
      [];
  object.notes = reader.readStringList(offsets[2]) ?? [];
  return object;
}

P _measurementInfoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readObjectList<MeasurementRecord>(
            offset,
            MeasurementRecordSchema.deserialize,
            allOffsets,
            MeasurementRecord(),
          ) ??
          []) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MeasurementInfoQueryFilter
    on QueryBuilder<MeasurementInfo, MeasurementInfo, QFilterCondition> {
  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      addOnMeasurementsEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addOnMeasurements',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      measurementRecordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'measurementRecords',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      measurementRecordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'measurementRecords',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      measurementRecordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'measurementRecords',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      measurementRecordsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'measurementRecords',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      measurementRecordsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'measurementRecords',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      measurementRecordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'measurementRecords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'notes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'notes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'notes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'notes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'notes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      notesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'notes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension MeasurementInfoQueryObject
    on QueryBuilder<MeasurementInfo, MeasurementInfo, QFilterCondition> {
  QueryBuilder<MeasurementInfo, MeasurementInfo, QAfterFilterCondition>
      measurementRecordsElement(FilterQuery<MeasurementRecord> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'measurementRecords');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MeasurementRecordSchema = Schema(
  name: r'MeasurementRecord',
  id: -4550302318673754836,
  properties: {
    r'buildOutBot': PropertySchema(
      id: 0,
      name: r'buildOutBot',
      type: IsarType.string,
    ),
    r'buildOutSides': PropertySchema(
      id: 1,
      name: r'buildOutSides',
      type: IsarType.string,
    ),
    r'buildOutTop': PropertySchema(
      id: 2,
      name: r'buildOutTop',
      type: IsarType.string,
    ),
    r'level': PropertySchema(
      id: 3,
      name: r'level',
      type: IsarType.string,
    ),
    r'nSpan': PropertySchema(
      id: 4,
      name: r'nSpan',
      type: IsarType.string,
    ),
    r'noteReference': PropertySchema(
      id: 5,
      name: r'noteReference',
      type: IsarType.string,
    ),
    r'openingNumber': PropertySchema(
      id: 6,
      name: r'openingNumber',
      type: IsarType.long,
    ),
    r'openingType': PropertySchema(
      id: 7,
      name: r'openingType',
      type: IsarType.string,
    ),
    r'product': PropertySchema(
      id: 8,
      name: r'product',
      type: IsarType.string,
    ),
    r'span': PropertySchema(
      id: 9,
      name: r'span',
      type: IsarType.string,
    ),
    r'spanDirection': PropertySchema(
      id: 10,
      name: r'spanDirection',
      type: IsarType.string,
    ),
    r'stackLeft': PropertySchema(
      id: 11,
      name: r'stackLeft',
      type: IsarType.string,
    ),
    r'stackRight': PropertySchema(
      id: 12,
      name: r'stackRight',
      type: IsarType.string,
    )
  },
  estimateSize: _measurementRecordEstimateSize,
  serialize: _measurementRecordSerialize,
  deserialize: _measurementRecordDeserialize,
  deserializeProp: _measurementRecordDeserializeProp,
);

int _measurementRecordEstimateSize(
  MeasurementRecord object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.buildOutBot;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.buildOutSides;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.buildOutTop;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.level;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nSpan;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.noteReference;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.openingType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.product;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.span;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.spanDirection;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.stackLeft;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.stackRight;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _measurementRecordSerialize(
  MeasurementRecord object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.buildOutBot);
  writer.writeString(offsets[1], object.buildOutSides);
  writer.writeString(offsets[2], object.buildOutTop);
  writer.writeString(offsets[3], object.level);
  writer.writeString(offsets[4], object.nSpan);
  writer.writeString(offsets[5], object.noteReference);
  writer.writeLong(offsets[6], object.openingNumber);
  writer.writeString(offsets[7], object.openingType);
  writer.writeString(offsets[8], object.product);
  writer.writeString(offsets[9], object.span);
  writer.writeString(offsets[10], object.spanDirection);
  writer.writeString(offsets[11], object.stackLeft);
  writer.writeString(offsets[12], object.stackRight);
}

MeasurementRecord _measurementRecordDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MeasurementRecord();
  object.buildOutBot = reader.readStringOrNull(offsets[0]);
  object.buildOutSides = reader.readStringOrNull(offsets[1]);
  object.buildOutTop = reader.readStringOrNull(offsets[2]);
  object.level = reader.readStringOrNull(offsets[3]);
  object.nSpan = reader.readStringOrNull(offsets[4]);
  object.noteReference = reader.readStringOrNull(offsets[5]);
  object.openingNumber = reader.readLongOrNull(offsets[6]);
  object.openingType = reader.readStringOrNull(offsets[7]);
  object.product = reader.readStringOrNull(offsets[8]);
  object.span = reader.readStringOrNull(offsets[9]);
  object.spanDirection = reader.readStringOrNull(offsets[10]);
  object.stackLeft = reader.readStringOrNull(offsets[11]);
  object.stackRight = reader.readStringOrNull(offsets[12]);
  return object;
}

P _measurementRecordDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MeasurementRecordQueryFilter
    on QueryBuilder<MeasurementRecord, MeasurementRecord, QFilterCondition> {
  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'buildOutBot',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'buildOutBot',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildOutBot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'buildOutBot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'buildOutBot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'buildOutBot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'buildOutBot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'buildOutBot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'buildOutBot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'buildOutBot',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildOutBot',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutBotIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'buildOutBot',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'buildOutSides',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'buildOutSides',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildOutSides',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'buildOutSides',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'buildOutSides',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'buildOutSides',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'buildOutSides',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'buildOutSides',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'buildOutSides',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'buildOutSides',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildOutSides',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutSidesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'buildOutSides',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'buildOutTop',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'buildOutTop',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildOutTop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'buildOutTop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'buildOutTop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'buildOutTop',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'buildOutTop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'buildOutTop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'buildOutTop',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'buildOutTop',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'buildOutTop',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      buildOutTopIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'buildOutTop',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'level',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'level',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      levelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'level',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nSpan',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nSpan',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nSpan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nSpan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nSpan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nSpan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nSpan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nSpan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nSpan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nSpan',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nSpan',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      nSpanIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nSpan',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noteReference',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noteReference',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noteReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noteReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noteReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noteReference',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'noteReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'noteReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noteReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noteReference',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noteReference',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      noteReferenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noteReference',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'openingNumber',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'openingNumber',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingNumberEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openingNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingNumberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'openingNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingNumberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'openingNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingNumberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'openingNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'openingType',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'openingType',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'openingType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'openingType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'openingType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'openingType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      openingTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'openingType',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'product',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'product',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'product',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'product',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'product',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'product',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      productIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'product',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'span',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'span',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'span',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'span',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'span',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'span',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'span',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'span',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'span',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'span',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'span',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'span',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'spanDirection',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'spanDirection',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spanDirection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spanDirection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spanDirection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spanDirection',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'spanDirection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'spanDirection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'spanDirection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'spanDirection',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spanDirection',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      spanDirectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spanDirection',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stackLeft',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stackLeft',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stackLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stackLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stackLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stackLeft',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stackLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stackLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stackLeft',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stackLeft',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stackLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackLeftIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stackLeft',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stackRight',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stackRight',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stackRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stackRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stackRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stackRight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stackRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stackRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stackRight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stackRight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stackRight',
        value: '',
      ));
    });
  }

  QueryBuilder<MeasurementRecord, MeasurementRecord, QAfterFilterCondition>
      stackRightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stackRight',
        value: '',
      ));
    });
  }
}

extension MeasurementRecordQueryObject
    on QueryBuilder<MeasurementRecord, MeasurementRecord, QFilterCondition> {}
