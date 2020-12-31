import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:landmarks/src/models/landmark.dart';
import 'package:rxdart/rxdart.dart';

part 'filtered_landmarks.freezed.dart';

@freezed
abstract class FilteredLandmarksEvent with _$FilteredLandmarksEvent {
  const factory FilteredLandmarksEvent.updateState(List<Landmark> landmarks) = UpdateLandmarksEvent;
}

class FilteredLandmarksBloc extends Bloc<FilteredLandmarksEvent, List<Landmark>> {
  final Cubit<List<Landmark>> landmarks;
  final Cubit<bool> showOnlyFavorite;

  StreamSubscription<List<Landmark>> _filteredLandmarksSubscription;

  FilteredLandmarksBloc(this.landmarks, this.showOnlyFavorite)
      : super(landmarks.state.where((element) => !showOnlyFavorite.state ? true : element.isFavorite).toList()) {
    _filteredLandmarksSubscription = Rx.combineLatest2<List<Landmark>, bool, List<Landmark>>(
            Stream.fromIterable([landmarks.state]).concatWith([landmarks]),
            showOnlyFavorite,
            (landmarks, showOnlyFavorite) =>
                landmarks.where((element) => !showOnlyFavorite ? true : element.isFavorite).toList())
        .listen((event) => add(FilteredLandmarksEvent.updateState(event)));
  }

  @override
  Future<void> close() async {
    await _filteredLandmarksSubscription.cancel();
    return super.close();
  }

  @override
  Stream<List<Landmark>> mapEventToState(FilteredLandmarksEvent event) async* {
    if (event is UpdateLandmarksEvent) {
      yield [for (final newLandmarks in event.landmarks) newLandmarks];
    }
  }
}
