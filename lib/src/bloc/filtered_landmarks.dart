import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:landmarks/src/bloc/landmarks.dart';
import 'package:landmarks/src/data/landmarks.dart';
import 'package:landmarks/src/models/landmark.dart';

part 'filtered_landmarks.freezed.dart';

@freezed
abstract class FilteredLandmarksEvent with _$FilteredLandmarksEvent {
  const factory FilteredLandmarksEvent.add(Landmark landmark) = _AddLandmarksEvent;
  const factory FilteredLandmarksEvent.remove(Landmark landmark) = _RemoveLandmarksEvent;
  const factory FilteredLandmarksEvent.reset() = _ResetLandmarksEvent;
  const factory FilteredLandmarksEvent.updateState(List<Landmark> landmarks) = UpdateLandmarksEvent;
}

class FilteredLandmarksBloc extends Bloc<FilteredLandmarksEvent, List<Landmark>> {
  final LandmarksBloc _landmarksBloc;
  final _onRemoveFavorite = StreamController<Landmark>();

  StreamSubscription<Landmark> _onRemoveLandmarkFromFavorite;
  StreamSubscription<List<Landmark>> _onUpdateLandmarks;

  FilteredLandmarksBloc(this._landmarksBloc) : super([..._landmarksBloc.state]) {
    _onRemoveLandmarkFromFavorite = _landmarksBloc.onRemoveFavorite.listen(_onRemoveFavorite.add);
    _onUpdateLandmarks = _landmarksBloc.listen((landmarks) => add(FilteredLandmarksEvent.updateState(landmarks)));
  }

  Stream<Landmark> get onRemoveFavorite => _onRemoveFavorite.stream;

  @override
  Future<void> close() async {
    await _onUpdateLandmarks.cancel();
    await _onRemoveLandmarkFromFavorite.cancel();
    await _onRemoveFavorite.close();
    return super.close();
  }

  @override
  Stream<List<Landmark>> mapEventToState(FilteredLandmarksEvent event) async* {
    if (event is _RemoveLandmarksEvent) {
      yield state.where((element) => element.id != event.landmark.id).toList();
    } else if (event is _ResetLandmarksEvent) {
      yield [..._landmarksBloc.state];
    } else if (event is _AddLandmarksEvent) {
      final index = landmarks.indexOf(event.landmark);
      yield [...state]..insert(state.length <= index ? state.length : index, event.landmark);
    } else if (event is UpdateLandmarksEvent) {
      yield [
        for (final currentLandmarks in state)
          for (final newLandmarks in event.landmarks)
            if (currentLandmarks.id == newLandmarks.id) newLandmarks
      ];
    }
  }
}
