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
  _AddLandmarksEvent add(Landmark landmark) {
    return _AddLandmarksEvent(
      landmark,
    );
  }

// ignore: unused_element
  _RemoveLandmarksEvent remove(Landmark landmark) {
    return _RemoveLandmarksEvent(
      landmark,
    );
  }

// ignore: unused_element
  _ResetLandmarksEvent reset() {
    return const _ResetLandmarksEvent();
  }

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
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(Landmark landmark),
    @required Result remove(Landmark landmark),
    @required Result reset(),
    @required Result updateState(List<Landmark> landmarks),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(Landmark landmark),
    Result remove(Landmark landmark),
    Result reset(),
    Result updateState(List<Landmark> landmarks),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_AddLandmarksEvent value),
    @required Result remove(_RemoveLandmarksEvent value),
    @required Result reset(_ResetLandmarksEvent value),
    @required Result updateState(UpdateLandmarksEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_AddLandmarksEvent value),
    Result remove(_RemoveLandmarksEvent value),
    Result reset(_ResetLandmarksEvent value),
    Result updateState(UpdateLandmarksEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FilteredLandmarksEventCopyWith<$Res> {
  factory $FilteredLandmarksEventCopyWith(FilteredLandmarksEvent value,
          $Res Function(FilteredLandmarksEvent) then) =
      _$FilteredLandmarksEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilteredLandmarksEventCopyWithImpl<$Res>
    implements $FilteredLandmarksEventCopyWith<$Res> {
  _$FilteredLandmarksEventCopyWithImpl(this._value, this._then);

  final FilteredLandmarksEvent _value;
  // ignore: unused_field
  final $Res Function(FilteredLandmarksEvent) _then;
}

/// @nodoc
abstract class _$AddLandmarksEventCopyWith<$Res> {
  factory _$AddLandmarksEventCopyWith(
          _AddLandmarksEvent value, $Res Function(_AddLandmarksEvent) then) =
      __$AddLandmarksEventCopyWithImpl<$Res>;
  $Res call({Landmark landmark});

  $LandmarkCopyWith<$Res> get landmark;
}

/// @nodoc
class __$AddLandmarksEventCopyWithImpl<$Res>
    extends _$FilteredLandmarksEventCopyWithImpl<$Res>
    implements _$AddLandmarksEventCopyWith<$Res> {
  __$AddLandmarksEventCopyWithImpl(
      _AddLandmarksEvent _value, $Res Function(_AddLandmarksEvent) _then)
      : super(_value, (v) => _then(v as _AddLandmarksEvent));

  @override
  _AddLandmarksEvent get _value => super._value as _AddLandmarksEvent;

  @override
  $Res call({
    Object landmark = freezed,
  }) {
    return _then(_AddLandmarksEvent(
      landmark == freezed ? _value.landmark : landmark as Landmark,
    ));
  }

  @override
  $LandmarkCopyWith<$Res> get landmark {
    if (_value.landmark == null) {
      return null;
    }
    return $LandmarkCopyWith<$Res>(_value.landmark, (value) {
      return _then(_value.copyWith(landmark: value));
    });
  }
}

/// @nodoc
class _$_AddLandmarksEvent implements _AddLandmarksEvent {
  const _$_AddLandmarksEvent(this.landmark) : assert(landmark != null);

  @override
  final Landmark landmark;

  @override
  String toString() {
    return 'FilteredLandmarksEvent.add(landmark: $landmark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddLandmarksEvent &&
            (identical(other.landmark, landmark) ||
                const DeepCollectionEquality()
                    .equals(other.landmark, landmark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(landmark);

  @override
  _$AddLandmarksEventCopyWith<_AddLandmarksEvent> get copyWith =>
      __$AddLandmarksEventCopyWithImpl<_AddLandmarksEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(Landmark landmark),
    @required Result remove(Landmark landmark),
    @required Result reset(),
    @required Result updateState(List<Landmark> landmarks),
  }) {
    assert(add != null);
    assert(remove != null);
    assert(reset != null);
    assert(updateState != null);
    return add(landmark);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(Landmark landmark),
    Result remove(Landmark landmark),
    Result reset(),
    Result updateState(List<Landmark> landmarks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(landmark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_AddLandmarksEvent value),
    @required Result remove(_RemoveLandmarksEvent value),
    @required Result reset(_ResetLandmarksEvent value),
    @required Result updateState(UpdateLandmarksEvent value),
  }) {
    assert(add != null);
    assert(remove != null);
    assert(reset != null);
    assert(updateState != null);
    return add(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_AddLandmarksEvent value),
    Result remove(_RemoveLandmarksEvent value),
    Result reset(_ResetLandmarksEvent value),
    Result updateState(UpdateLandmarksEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddLandmarksEvent implements FilteredLandmarksEvent {
  const factory _AddLandmarksEvent(Landmark landmark) = _$_AddLandmarksEvent;

  Landmark get landmark;
  _$AddLandmarksEventCopyWith<_AddLandmarksEvent> get copyWith;
}

/// @nodoc
abstract class _$RemoveLandmarksEventCopyWith<$Res> {
  factory _$RemoveLandmarksEventCopyWith(_RemoveLandmarksEvent value,
          $Res Function(_RemoveLandmarksEvent) then) =
      __$RemoveLandmarksEventCopyWithImpl<$Res>;
  $Res call({Landmark landmark});

  $LandmarkCopyWith<$Res> get landmark;
}

/// @nodoc
class __$RemoveLandmarksEventCopyWithImpl<$Res>
    extends _$FilteredLandmarksEventCopyWithImpl<$Res>
    implements _$RemoveLandmarksEventCopyWith<$Res> {
  __$RemoveLandmarksEventCopyWithImpl(
      _RemoveLandmarksEvent _value, $Res Function(_RemoveLandmarksEvent) _then)
      : super(_value, (v) => _then(v as _RemoveLandmarksEvent));

  @override
  _RemoveLandmarksEvent get _value => super._value as _RemoveLandmarksEvent;

  @override
  $Res call({
    Object landmark = freezed,
  }) {
    return _then(_RemoveLandmarksEvent(
      landmark == freezed ? _value.landmark : landmark as Landmark,
    ));
  }

  @override
  $LandmarkCopyWith<$Res> get landmark {
    if (_value.landmark == null) {
      return null;
    }
    return $LandmarkCopyWith<$Res>(_value.landmark, (value) {
      return _then(_value.copyWith(landmark: value));
    });
  }
}

/// @nodoc
class _$_RemoveLandmarksEvent implements _RemoveLandmarksEvent {
  const _$_RemoveLandmarksEvent(this.landmark) : assert(landmark != null);

  @override
  final Landmark landmark;

  @override
  String toString() {
    return 'FilteredLandmarksEvent.remove(landmark: $landmark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveLandmarksEvent &&
            (identical(other.landmark, landmark) ||
                const DeepCollectionEquality()
                    .equals(other.landmark, landmark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(landmark);

  @override
  _$RemoveLandmarksEventCopyWith<_RemoveLandmarksEvent> get copyWith =>
      __$RemoveLandmarksEventCopyWithImpl<_RemoveLandmarksEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(Landmark landmark),
    @required Result remove(Landmark landmark),
    @required Result reset(),
    @required Result updateState(List<Landmark> landmarks),
  }) {
    assert(add != null);
    assert(remove != null);
    assert(reset != null);
    assert(updateState != null);
    return remove(landmark);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(Landmark landmark),
    Result remove(Landmark landmark),
    Result reset(),
    Result updateState(List<Landmark> landmarks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(landmark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_AddLandmarksEvent value),
    @required Result remove(_RemoveLandmarksEvent value),
    @required Result reset(_ResetLandmarksEvent value),
    @required Result updateState(UpdateLandmarksEvent value),
  }) {
    assert(add != null);
    assert(remove != null);
    assert(reset != null);
    assert(updateState != null);
    return remove(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_AddLandmarksEvent value),
    Result remove(_RemoveLandmarksEvent value),
    Result reset(_ResetLandmarksEvent value),
    Result updateState(UpdateLandmarksEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _RemoveLandmarksEvent implements FilteredLandmarksEvent {
  const factory _RemoveLandmarksEvent(Landmark landmark) =
      _$_RemoveLandmarksEvent;

  Landmark get landmark;
  _$RemoveLandmarksEventCopyWith<_RemoveLandmarksEvent> get copyWith;
}

/// @nodoc
abstract class _$ResetLandmarksEventCopyWith<$Res> {
  factory _$ResetLandmarksEventCopyWith(_ResetLandmarksEvent value,
          $Res Function(_ResetLandmarksEvent) then) =
      __$ResetLandmarksEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetLandmarksEventCopyWithImpl<$Res>
    extends _$FilteredLandmarksEventCopyWithImpl<$Res>
    implements _$ResetLandmarksEventCopyWith<$Res> {
  __$ResetLandmarksEventCopyWithImpl(
      _ResetLandmarksEvent _value, $Res Function(_ResetLandmarksEvent) _then)
      : super(_value, (v) => _then(v as _ResetLandmarksEvent));

  @override
  _ResetLandmarksEvent get _value => super._value as _ResetLandmarksEvent;
}

/// @nodoc
class _$_ResetLandmarksEvent implements _ResetLandmarksEvent {
  const _$_ResetLandmarksEvent();

  @override
  String toString() {
    return 'FilteredLandmarksEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResetLandmarksEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result add(Landmark landmark),
    @required Result remove(Landmark landmark),
    @required Result reset(),
    @required Result updateState(List<Landmark> landmarks),
  }) {
    assert(add != null);
    assert(remove != null);
    assert(reset != null);
    assert(updateState != null);
    return reset();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(Landmark landmark),
    Result remove(Landmark landmark),
    Result reset(),
    Result updateState(List<Landmark> landmarks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result add(_AddLandmarksEvent value),
    @required Result remove(_RemoveLandmarksEvent value),
    @required Result reset(_ResetLandmarksEvent value),
    @required Result updateState(UpdateLandmarksEvent value),
  }) {
    assert(add != null);
    assert(remove != null);
    assert(reset != null);
    assert(updateState != null);
    return reset(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_AddLandmarksEvent value),
    Result remove(_RemoveLandmarksEvent value),
    Result reset(_ResetLandmarksEvent value),
    Result updateState(UpdateLandmarksEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _ResetLandmarksEvent implements FilteredLandmarksEvent {
  const factory _ResetLandmarksEvent() = _$_ResetLandmarksEvent;
}

/// @nodoc
abstract class $UpdateLandmarksEventCopyWith<$Res> {
  factory $UpdateLandmarksEventCopyWith(UpdateLandmarksEvent value,
          $Res Function(UpdateLandmarksEvent) then) =
      _$UpdateLandmarksEventCopyWithImpl<$Res>;
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
    @required Result add(Landmark landmark),
    @required Result remove(Landmark landmark),
    @required Result reset(),
    @required Result updateState(List<Landmark> landmarks),
  }) {
    assert(add != null);
    assert(remove != null);
    assert(reset != null);
    assert(updateState != null);
    return updateState(landmarks);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result add(Landmark landmark),
    Result remove(Landmark landmark),
    Result reset(),
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
    @required Result add(_AddLandmarksEvent value),
    @required Result remove(_RemoveLandmarksEvent value),
    @required Result reset(_ResetLandmarksEvent value),
    @required Result updateState(UpdateLandmarksEvent value),
  }) {
    assert(add != null);
    assert(remove != null);
    assert(reset != null);
    assert(updateState != null);
    return updateState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result add(_AddLandmarksEvent value),
    Result remove(_RemoveLandmarksEvent value),
    Result reset(_ResetLandmarksEvent value),
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

  List<Landmark> get landmarks;
  $UpdateLandmarksEventCopyWith<UpdateLandmarksEvent> get copyWith;
}
