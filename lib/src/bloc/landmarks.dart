import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:landmarks/src/data/landmarks.dart';
import 'package:landmarks/src/models/landmark.dart';

part 'landmarks.freezed.dart';

@freezed
abstract class LandmarkEvent with _$LandmarkEvent {
  const factory LandmarkEvent.toggleFavorite(Landmark landmark) = ToggleFavoriteLandmarkEvent;
}

class LandmarksBloc extends Bloc<LandmarkEvent, List<Landmark>> {
  final _onRemoveFavorite = StreamController<Landmark>();

  LandmarksBloc() : super([...landmarks]);

  Stream<Landmark> get onRemoveFavorite => _onRemoveFavorite.stream;

  @override
  Future<void> close() async {
    await _onRemoveFavorite.close();
    return super.close();
  }

  @override
  Stream<List<Landmark>> mapEventToState(LandmarkEvent event) async* {
    if (event is ToggleFavoriteLandmarkEvent) {
      yield [
        for (final l in state)
          if (l == event.landmark) l.copyWith(isFavorite: !l.isFavorite) else l
      ];
      if (event.landmark.isFavorite) {
        _onRemoveFavorite.add(event.landmark);
      }
    }
  }
}
