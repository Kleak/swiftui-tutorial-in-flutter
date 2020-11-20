// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coordinates _$_$_CoordinatesFromJson(Map<String, dynamic> json) {
  return _$_Coordinates(
    (json['latitude'] as num)?.toDouble(),
    (json['longitude'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_CoordinatesToJson(_$_Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$_Landmark _$_$_LandmarkFromJson(Map<String, dynamic> json) {
  return _$_Landmark(
    id: json['id'] as int,
    name: json['name'] as String,
    imageName: json['imageName'] as String,
    coordinates: json['coordinates'] == null
        ? null
        : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
    state: json['state'] as String,
    park: json['park'] as String,
    category: _$enumDecodeNullable(_$CategoryEnumMap, json['category']),
  );
}

Map<String, dynamic> _$_$_LandmarkToJson(_$_Landmark instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageName': instance.imageName,
      'coordinates': instance.coordinates,
      'state': instance.state,
      'park': instance.park,
      'category': _$CategoryEnumMap[instance.category],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$CategoryEnumMap = {
  Category.featured: 'featured',
  Category.lakes: 'lakes',
  Category.rivers: 'rivers',
};
