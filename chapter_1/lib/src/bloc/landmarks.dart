import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:landmarks/src/models/landmark.dart';

part 'landmarks.freezed.dart';

@freezed
abstract class LandmarkEvent with _$LandmarkEvent {
  const factory LandmarkEvent.toggleFavorite(Landmark landmark) = ToggleFavoriteLandmarkEvent;
}

class LandmarksBloc extends Bloc<LandmarkEvent, List<Landmark>> {
  LandmarksBloc(List<Landmark> landmarks) : super([...landmarks]);

  @override
  Stream<List<Landmark>> mapEventToState(LandmarkEvent event) async* {
    if (event is ToggleFavoriteLandmarkEvent) {
      yield [
        for (final l in state)
          if (l.id == event.landmark.id) l.copyWith(isFavorite: !l.isFavorite) else l
      ];
    }
  }
}
