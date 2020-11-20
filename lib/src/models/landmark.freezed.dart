// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'landmark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
class _$CoordinatesTearOff {
  const _$CoordinatesTearOff();

// ignore: unused_element
  _Coordinates call(double latitude, double longitude) {
    return _Coordinates(
      latitude,
      longitude,
    );
  }

// ignore: unused_element
  Coordinates fromJson(Map<String, Object> json) {
    return Coordinates.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Coordinates = _$CoordinatesTearOff();

/// @nodoc
mixin _$Coordinates {
  double get latitude;
  double get longitude;

  Map<String, dynamic> toJson();
  $CoordinatesCopyWith<Coordinates> get copyWith;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res> implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  final Coordinates _value;
  // ignore: unused_field
  final $Res Function(Coordinates) _then;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

/// @nodoc
abstract class _$CoordinatesCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$CoordinatesCopyWith(
          _Coordinates value, $Res Function(_Coordinates) then) =
      __$CoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$CoordinatesCopyWithImpl<$Res> extends _$CoordinatesCopyWithImpl<$Res>
    implements _$CoordinatesCopyWith<$Res> {
  __$CoordinatesCopyWithImpl(
      _Coordinates _value, $Res Function(_Coordinates) _then)
      : super(_value, (v) => _then(v as _Coordinates));

  @override
  _Coordinates get _value => super._value as _Coordinates;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_Coordinates(
      latitude == freezed ? _value.latitude : latitude as double,
      longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Coordinates implements _Coordinates {
  _$_Coordinates(this.latitude, this.longitude)
      : assert(latitude != null),
        assert(longitude != null);

  factory _$_Coordinates.fromJson(Map<String, dynamic> json) =>
      _$_$_CoordinatesFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Coordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coordinates &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @override
  _$CoordinatesCopyWith<_Coordinates> get copyWith =>
      __$CoordinatesCopyWithImpl<_Coordinates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoordinatesToJson(this);
  }
}

abstract class _Coordinates implements Coordinates {
  factory _Coordinates(double latitude, double longitude) = _$_Coordinates;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$_Coordinates.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  _$CoordinatesCopyWith<_Coordinates> get copyWith;
}

Landmark _$LandmarkFromJson(Map<String, dynamic> json) {
  return _Landmark.fromJson(json);
}

/// @nodoc
class _$LandmarkTearOff {
  const _$LandmarkTearOff();

// ignore: unused_element
  _Landmark call(
      {@required int id,
      @required String name,
      @required String imageName,
      @required Coordinates coordinates,
      @required String state,
      @required String park,
      @required Category category,
      bool isFavorite = false}) {
    return _Landmark(
      id: id,
      name: name,
      imageName: imageName,
      coordinates: coordinates,
      state: state,
      park: park,
      category: category,
      isFavorite: isFavorite,
    );
  }

// ignore: unused_element
  Landmark fromJson(Map<String, Object> json) {
    return Landmark.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Landmark = _$LandmarkTearOff();

/// @nodoc
mixin _$Landmark {
  int get id;
  String get name;
  String get imageName;
  Coordinates get coordinates;
  String get state;
  String get park;
  Category get category;
  bool get isFavorite;

  Map<String, dynamic> toJson();
  $LandmarkCopyWith<Landmark> get copyWith;
}

/// @nodoc
abstract class $LandmarkCopyWith<$Res> {
  factory $LandmarkCopyWith(Landmark value, $Res Function(Landmark) then) =
      _$LandmarkCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String imageName,
      Coordinates coordinates,
      String state,
      String park,
      Category category,
      bool isFavorite});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$LandmarkCopyWithImpl<$Res> implements $LandmarkCopyWith<$Res> {
  _$LandmarkCopyWithImpl(this._value, this._then);

  final Landmark _value;
  // ignore: unused_field
  final $Res Function(Landmark) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object imageName = freezed,
    Object coordinates = freezed,
    Object state = freezed,
    Object park = freezed,
    Object category = freezed,
    Object isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as Coordinates,
      state: state == freezed ? _value.state : state as String,
      park: park == freezed ? _value.park : park as String,
      category: category == freezed ? _value.category : category as Category,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    if (_value.coordinates == null) {
      return null;
    }
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
abstract class _$LandmarkCopyWith<$Res> implements $LandmarkCopyWith<$Res> {
  factory _$LandmarkCopyWith(_Landmark value, $Res Function(_Landmark) then) =
      __$LandmarkCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String imageName,
      Coordinates coordinates,
      String state,
      String park,
      Category category,
      bool isFavorite});

  @override
  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$LandmarkCopyWithImpl<$Res> extends _$LandmarkCopyWithImpl<$Res>
    implements _$LandmarkCopyWith<$Res> {
  __$LandmarkCopyWithImpl(_Landmark _value, $Res Function(_Landmark) _then)
      : super(_value, (v) => _then(v as _Landmark));

  @override
  _Landmark get _value => super._value as _Landmark;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object imageName = freezed,
    Object coordinates = freezed,
    Object state = freezed,
    Object park = freezed,
    Object category = freezed,
    Object isFavorite = freezed,
  }) {
    return _then(_Landmark(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as Coordinates,
      state: state == freezed ? _value.state : state as String,
      park: park == freezed ? _value.park : park as String,
      category: category == freezed ? _value.category : category as Category,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Landmark implements _Landmark {
  const _$_Landmark(
      {@required this.id,
      @required this.name,
      @required this.imageName,
      @required this.coordinates,
      @required this.state,
      @required this.park,
      @required this.category,
      this.isFavorite = false})
      : assert(id != null),
        assert(name != null),
        assert(imageName != null),
        assert(coordinates != null),
        assert(state != null),
        assert(park != null),
        assert(category != null),
        assert(isFavorite != null);

  factory _$_Landmark.fromJson(Map<String, dynamic> json) =>
      _$_$_LandmarkFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imageName;
  @override
  final Coordinates coordinates;
  @override
  final String state;
  @override
  final String park;
  @override
  final Category category;
  @JsonKey(defaultValue: false)
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'Landmark(id: $id, name: $name, imageName: $imageName, coordinates: $coordinates, state: $state, park: $park, category: $category, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Landmark &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageName, imageName) ||
                const DeepCollectionEquality()
                    .equals(other.imageName, imageName)) &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.park, park) ||
                const DeepCollectionEquality().equals(other.park, park)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageName) ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(park) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(isFavorite);

  @override
  _$LandmarkCopyWith<_Landmark> get copyWith =>
      __$LandmarkCopyWithImpl<_Landmark>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LandmarkToJson(this);
  }
}

abstract class _Landmark implements Landmark {
  const factory _Landmark(
      {@required int id,
      @required String name,
      @required String imageName,
      @required Coordinates coordinates,
      @required String state,
      @required String park,
      @required Category category,
      bool isFavorite}) = _$_Landmark;

  factory _Landmark.fromJson(Map<String, dynamic> json) = _$_Landmark.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imageName;
  @override
  Coordinates get coordinates;
  @override
  String get state;
  @override
  String get park;
  @override
  Category get category;
  @override
  bool get isFavorite;
  @override
  _$LandmarkCopyWith<_Landmark> get copyWith;
}
