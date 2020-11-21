import 'package:freezed_annotation/freezed_annotation.dart';

part 'landmark.freezed.dart';
part 'landmark.g.dart';

@freezed
abstract class Coordinates with _$Coordinates {
  factory Coordinates(double latitude, double longitude) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);
}

enum Category { featured, lakes, rivers }

@freezed
abstract class Landmark with _$Landmark {
  const factory Landmark({
    @required int id,
    @required String name,
    @required String imageName,
    @required Coordinates coordinates,
    @required String state,
    @required String park,
    @required Category category,
    @Default(false) bool isFavorite,
  }) = _Landmark;

  factory Landmark.fromJson(Map<String, dynamic> json) => _$LandmarkFromJson(json);
}
