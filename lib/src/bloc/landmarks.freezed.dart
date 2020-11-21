// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'landmarks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LandmarkEventTearOff {
  const _$LandmarkEventTearOff();

// ignore: unused_element
  ToggleFavoriteLandmarkEvent toggleFavorite(Landmark landmark) {
    return ToggleFavoriteLandmarkEvent(
      landmark,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LandmarkEvent = _$LandmarkEventTearOff();

/// @nodoc
mixin _$LandmarkEvent {
  Landmark get landmark;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result toggleFavorite(Landmark landmark),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result toggleFavorite(Landmark landmark),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result toggleFavorite(ToggleFavoriteLandmarkEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result toggleFavorite(ToggleFavoriteLandmarkEvent value),
    @required Result orElse(),
  });

  $LandmarkEventCopyWith<LandmarkEvent> get copyWith;
}

/// @nodoc
abstract class $LandmarkEventCopyWith<$Res> {
  factory $LandmarkEventCopyWith(
          LandmarkEvent value, $Res Function(LandmarkEvent) then) =
      _$LandmarkEventCopyWithImpl<$Res>;
  $Res call({Landmark landmark});

  $LandmarkCopyWith<$Res> get landmark;
}

/// @nodoc
class _$LandmarkEventCopyWithImpl<$Res>
    implements $LandmarkEventCopyWith<$Res> {
  _$LandmarkEventCopyWithImpl(this._value, this._then);

  final LandmarkEvent _value;
  // ignore: unused_field
  final $Res Function(LandmarkEvent) _then;

  @override
  $Res call({
    Object landmark = freezed,
  }) {
    return _then(_value.copyWith(
      landmark: landmark == freezed ? _value.landmark : landmark as Landmark,
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
abstract class $ToggleFavoriteLandmarkEventCopyWith<$Res>
    implements $LandmarkEventCopyWith<$Res> {
  factory $ToggleFavoriteLandmarkEventCopyWith(
          ToggleFavoriteLandmarkEvent value,
          $Res Function(ToggleFavoriteLandmarkEvent) then) =
      _$ToggleFavoriteLandmarkEventCopyWithImpl<$Res>;
  @override
  $Res call({Landmark landmark});

  @override
  $LandmarkCopyWith<$Res> get landmark;
}

/// @nodoc
class _$ToggleFavoriteLandmarkEventCopyWithImpl<$Res>
    extends _$LandmarkEventCopyWithImpl<$Res>
    implements $ToggleFavoriteLandmarkEventCopyWith<$Res> {
  _$ToggleFavoriteLandmarkEventCopyWithImpl(ToggleFavoriteLandmarkEvent _value,
      $Res Function(ToggleFavoriteLandmarkEvent) _then)
      : super(_value, (v) => _then(v as ToggleFavoriteLandmarkEvent));

  @override
  ToggleFavoriteLandmarkEvent get _value =>
      super._value as ToggleFavoriteLandmarkEvent;

  @override
  $Res call({
    Object landmark = freezed,
  }) {
    return _then(ToggleFavoriteLandmarkEvent(
      landmark == freezed ? _value.landmark : landmark as Landmark,
    ));
  }
}

/// @nodoc
class _$ToggleFavoriteLandmarkEvent implements ToggleFavoriteLandmarkEvent {
  _$ToggleFavoriteLandmarkEvent(this.landmark) : assert(landmark != null);

  @override
  final Landmark landmark;

  @override
  String toString() {
    return 'LandmarkEvent.toggleFavorite(landmark: $landmark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggleFavoriteLandmarkEvent &&
            (identical(other.landmark, landmark) ||
                const DeepCollectionEquality()
                    .equals(other.landmark, landmark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(landmark);

  @override
  $ToggleFavoriteLandmarkEventCopyWith<ToggleFavoriteLandmarkEvent>
      get copyWith => _$ToggleFavoriteLandmarkEventCopyWithImpl<
          ToggleFavoriteLandmarkEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result toggleFavorite(Landmark landmark),
  }) {
    assert(toggleFavorite != null);
    return toggleFavorite(landmark);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result toggleFavorite(Landmark landmark),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleFavorite != null) {
      return toggleFavorite(landmark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result toggleFavorite(ToggleFavoriteLandmarkEvent value),
  }) {
    assert(toggleFavorite != null);
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result toggleFavorite(ToggleFavoriteLandmarkEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class ToggleFavoriteLandmarkEvent implements LandmarkEvent {
  factory ToggleFavoriteLandmarkEvent(Landmark landmark) =
      _$ToggleFavoriteLandmarkEvent;

  @override
  Landmark get landmark;
  @override
  $ToggleFavoriteLandmarkEventCopyWith<ToggleFavoriteLandmarkEvent>
      get copyWith;
}
