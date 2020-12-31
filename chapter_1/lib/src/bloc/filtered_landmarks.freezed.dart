// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'filtered_landmarks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FilteredLandmarksEventTearOff {
  const _$FilteredLandmarksEventTearOff();

// ignore: unused_element
  UpdateLandmarksEvent updateState(List<Landmark> landmarks) {
    return UpdateLandmarksEvent(
      landmarks,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FilteredLandmarksEvent = _$FilteredLandmarksEventTearOff();

/// @nodoc
mixin _$FilteredLandmarksEvent {
  List<Landmark> get landmarks;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateState(List<Landmark> landmarks),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateState(List<Landmark> landmarks),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateState(UpdateLandmarksEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateState(UpdateLandmarksEvent value),
    @required Result orElse(),
  });

  $FilteredLandmarksEventCopyWith<FilteredLandmarksEvent> get copyWith;
}

/// @nodoc
abstract class $FilteredLandmarksEventCopyWith<$Res> {
  factory $FilteredLandmarksEventCopyWith(FilteredLandmarksEvent value,
          $Res Function(FilteredLandmarksEvent) then) =
      _$FilteredLandmarksEventCopyWithImpl<$Res>;
  $Res call({List<Landmark> landmarks});
}

/// @nodoc
class _$FilteredLandmarksEventCopyWithImpl<$Res>
    implements $FilteredLandmarksEventCopyWith<$Res> {
  _$FilteredLandmarksEventCopyWithImpl(this._value, this._then);

  final FilteredLandmarksEvent _value;
  // ignore: unused_field
  final $Res Function(FilteredLandmarksEvent) _then;

  @override
  $Res call({
    Object landmarks = freezed,
  }) {
    return _then(_value.copyWith(
      landmarks:
          landmarks == freezed ? _value.landmarks : landmarks as List<Landmark>,
    ));
  }
}

/// @nodoc
abstract class $UpdateLandmarksEventCopyWith<$Res>
    implements $FilteredLandmarksEventCopyWith<$Res> {
  factory $UpdateLandmarksEventCopyWith(UpdateLandmarksEvent value,
          $Res Function(UpdateLandmarksEvent) then) =
      _$UpdateLandmarksEventCopyWithImpl<$Res>;
  @override
  $Res call({List<Landmark> landmarks});
}

/// @nodoc
class _$UpdateLandmarksEventCopyWithImpl<$Res>
    extends _$FilteredLandmarksEventCopyWithImpl<$Res>
    implements $UpdateLandmarksEventCopyWith<$Res> {
  _$UpdateLandmarksEventCopyWithImpl(
      UpdateLandmarksEvent _value, $Res Function(UpdateLandmarksEvent) _then)
      : super(_value, (v) => _then(v as UpdateLandmarksEvent));

  @override
  UpdateLandmarksEvent get _value => super._value as UpdateLandmarksEvent;

  @override
  $Res call({
    Object landmarks = freezed,
  }) {
    return _then(UpdateLandmarksEvent(
      landmarks == freezed ? _value.landmarks : landmarks as List<Landmark>,
    ));
  }
}

/// @nodoc
class _$UpdateLandmarksEvent implements UpdateLandmarksEvent {
  const _$UpdateLandmarksEvent(this.landmarks) : assert(landmarks != null);

  @override
  final List<Landmark> landmarks;

  @override
  String toString() {
    return 'FilteredLandmarksEvent.updateState(landmarks: $landmarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateLandmarksEvent &&
            (identical(other.landmarks, landmarks) ||
                const DeepCollectionEquality()
                    .equals(other.landmarks, landmarks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(landmarks);

  @override
  $UpdateLandmarksEventCopyWith<UpdateLandmarksEvent> get copyWith =>
      _$UpdateLandmarksEventCopyWithImpl<UpdateLandmarksEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updateState(List<Landmark> landmarks),
  }) {
    assert(updateState != null);
    return updateState(landmarks);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updateState(List<Landmark> landmarks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateState != null) {
      return updateState(landmarks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updateState(UpdateLandmarksEvent value),
  }) {
    assert(updateState != null);
    return updateState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updateState(UpdateLandmarksEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateState != null) {
      return updateState(this);
    }
    return orElse();
  }
}

abstract class UpdateLandmarksEvent implements FilteredLandmarksEvent {
  const factory UpdateLandmarksEvent(List<Landmark> landmarks) =
      _$UpdateLandmarksEvent;

  @override
  List<Landmark> get landmarks;
  @override
  $UpdateLandmarksEventCopyWith<UpdateLandmarksEvent> get copyWith;
}
