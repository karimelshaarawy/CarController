// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speed_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSpeedDataCollection on Isar {
  IsarCollection<SpeedData> get speedDatas => this.collection();
}

const SpeedDataSchema = CollectionSchema(
  name: r'SpeedData',
  id: -7208610541221560131,
  properties: {
    r'carNumber': PropertySchema(
      id: 0,
      name: r'carNumber',
      type: IsarType.long,
    ),
    r'speed': PropertySchema(
      id: 1,
      name: r'speed',
      type: IsarType.long,
    ),
    r'timestamp': PropertySchema(
      id: 2,
      name: r'timestamp',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _speedDataEstimateSize,
  serialize: _speedDataSerialize,
  deserialize: _speedDataDeserialize,
  deserializeProp: _speedDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _speedDataGetId,
  getLinks: _speedDataGetLinks,
  attach: _speedDataAttach,
  version: '3.1.0+1',
);

int _speedDataEstimateSize(
  SpeedData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _speedDataSerialize(
  SpeedData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.carNumber);
  writer.writeLong(offsets[1], object.speed);
  writer.writeDateTime(offsets[2], object.timestamp);
}

SpeedData _speedDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SpeedData(
    reader.readLong(offsets[0]),
    reader.readLong(offsets[1]),
    reader.readDateTime(offsets[2]),
  );
  object.id = id;
  return object;
}

P _speedDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _speedDataGetId(SpeedData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _speedDataGetLinks(SpeedData object) {
  return [];
}

void _speedDataAttach(IsarCollection<dynamic> col, Id id, SpeedData object) {
  object.id = id;
}

extension SpeedDataQueryWhereSort
    on QueryBuilder<SpeedData, SpeedData, QWhere> {
  QueryBuilder<SpeedData, SpeedData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SpeedDataQueryWhere
    on QueryBuilder<SpeedData, SpeedData, QWhereClause> {
  QueryBuilder<SpeedData, SpeedData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SpeedData, SpeedData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterWhereClause> idBetween(
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

extension SpeedDataQueryFilter
    on QueryBuilder<SpeedData, SpeedData, QFilterCondition> {
  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> carNumberEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition>
      carNumberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> carNumberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> carNumberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> speedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'speed',
        value: value,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> speedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'speed',
        value: value,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> speedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'speed',
        value: value,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> speedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'speed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> timestampEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition>
      timestampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> timestampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterFilterCondition> timestampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SpeedDataQueryObject
    on QueryBuilder<SpeedData, SpeedData, QFilterCondition> {}

extension SpeedDataQueryLinks
    on QueryBuilder<SpeedData, SpeedData, QFilterCondition> {}

extension SpeedDataQuerySortBy on QueryBuilder<SpeedData, SpeedData, QSortBy> {
  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> sortByCarNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carNumber', Sort.asc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> sortByCarNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carNumber', Sort.desc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> sortBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.asc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> sortBySpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.desc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension SpeedDataQuerySortThenBy
    on QueryBuilder<SpeedData, SpeedData, QSortThenBy> {
  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> thenByCarNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carNumber', Sort.asc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> thenByCarNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carNumber', Sort.desc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> thenBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.asc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> thenBySpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'speed', Sort.desc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<SpeedData, SpeedData, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension SpeedDataQueryWhereDistinct
    on QueryBuilder<SpeedData, SpeedData, QDistinct> {
  QueryBuilder<SpeedData, SpeedData, QDistinct> distinctByCarNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carNumber');
    });
  }

  QueryBuilder<SpeedData, SpeedData, QDistinct> distinctBySpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'speed');
    });
  }

  QueryBuilder<SpeedData, SpeedData, QDistinct> distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }
}

extension SpeedDataQueryProperty
    on QueryBuilder<SpeedData, SpeedData, QQueryProperty> {
  QueryBuilder<SpeedData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SpeedData, int, QQueryOperations> carNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carNumber');
    });
  }

  QueryBuilder<SpeedData, int, QQueryOperations> speedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'speed');
    });
  }

  QueryBuilder<SpeedData, DateTime, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }
}
