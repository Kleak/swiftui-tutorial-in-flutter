import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:landmarks/src/bloc/landmarks.dart';
import 'package:landmarks/src/bloc/show_favorite.dart';
import 'package:landmarks/src/models/landmark.dart';

part 'filtered_landmarks.freezed.dart';

@freezed
abstract class FilteredLandmarksEvent with _$FilteredLandmarksEvent {
  const factory FilteredLandmarksEvent.add(Landmark landmark) = _AddLandmarksEvent;
  const factory FilteredLandmarksEvent.remove(Landmark landmark) = _RemoveLandmarkEvent;
  const factory FilteredLandmarksEvent.removes(List<Landmark> landmarks) = _RemoveLandmarksEvent;
  const factory FilteredLandmarksEvent.reset() = _ResetLandmarksEvent;
  const factory FilteredLandmarksEvent.updateState(List<Landmark> landmarks) = UpdateLandmarksEvent;
}

class FilteredLandmarksBloc extends Bloc<FilteredLandmarksEvent, List<Landmark>> {
  final Cubit<List<Landmark>> _landmarks;
  final Cubit<bool> _showOnlyFavorite;
  final Stream<Landmark> _removeLandmarkFromFavorite;

  StreamSubscription<Landmark> _onRemoveLandmarkFromFavorite;
  StreamSubscription<List<Landmark>> _onUpdateLandmarks;
  StreamSubscription<bool> _onShowOnlyFavorite;

  FilteredLandmarksBloc(this._showOnlyFavorite, this._landmarks, this._removeLandmarkFromFavorite)
      : super(_landmarks.state) {
    _onUpdateLandmarks = _landmarks.listen((landmarks) => add(FilteredLandmarksEvent.updateState(landmarks)));

    _onRemoveLandmarkFromFavorite = _removeLandmarkFromFavorite.listen((landmark) {
      if (_showOnlyFavorite.state) {
        add(FilteredLandmarksEvent.remove(landmark));
      }
    });

    _onShowOnlyFavorite = _showOnlyFavorite.listen((showOnlyFavorite) {
      print(_landmarks.state);
      print(showOnlyFavorite);
      if (showOnlyFavorite) {
        final notFavoriteLandmarks = _landmarks.state.where((element) => !element.isFavorite).toList();
        add(FilteredLandmarksEvent.removes(notFavoriteLandmarks));
      } else {
        add(FilteredLandmarksEvent.reset());
      }
    });
  }

  @override
  Future<void> close() async {
    await _onShowOnlyFavorite.cancel();
    await _onUpdateLandmarks.cancel();
    await _onRemoveLandmarkFromFavorite.cancel();
    return super.close();
  }

  @override
  Stream<List<Landmark>> mapEventToState(FilteredLandmarksEvent event) async* {
    if (event is _RemoveLandmarkEvent) {
      yield state.where((element) => element.id != event.landmark.id).toList();
    } else if (event is _RemoveLandmarksEvent) {
      yield state.where((element) => !event.landmarks.contains(element)).toList();
    } else if (event is _ResetLandmarksEvent) {
      yield [..._landmarks.state];
    } else if (event is _AddLandmarksEvent) {
      final index = _landmarks.state.indexWhere((landmark) => landmark.id == event.landmark.id);
      yield [...state]..insert(state.length <= index ? state.length : index, event.landmark);
    } else if (event is UpdateLandmarksEvent) {
      yield [for (final newLandmarks in event.landmarks) newLandmarks];
    }
  }
}
