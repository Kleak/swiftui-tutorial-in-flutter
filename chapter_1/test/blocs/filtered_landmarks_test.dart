import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:landmarks/src/bloc/filtered_landmarks.dart';
import 'package:landmarks/src/bloc/landmarks.dart';
import 'package:landmarks/src/bloc/show_favorite.dart';
import 'package:landmarks/src/data/landmarks.dart';
import 'package:landmarks/src/models/landmark.dart';

void main() {
  group('Filtered Landmarks BLoC', () {
    blocTest<FilteredLandmarksBloc, List<Landmark>>(
      'emit nothing when created',
      build: () {
        //  ignore: close_sinks
        final landmarksBloc = LandmarksBloc(landmarks);
        final showOnlyFavorite = ShowOnlyFavoriteCubit();

        return FilteredLandmarksBloc(landmarksBloc, showOnlyFavorite);
      },
      expect: [],
    );

    blocTest<FilteredLandmarksBloc, List<Landmark>>(
      'toggle favorite',
      build: () {
        //  ignore: close_sinks
        final landmarksBloc = LandmarksBloc(landmarks);
        final showOnlyFavorite = ShowOnlyFavoriteCubit();

        return FilteredLandmarksBloc(landmarksBloc, showOnlyFavorite);
      },
      act: (bloc) {
        bloc.showOnlyFavoriteCubit.toggle();
      },
      expect: [
        landmarks.where((element) => element.isFavorite).toList(),
      ],
    );

    blocTest<FilteredLandmarksBloc, List<Landmark>>(
      'add landmark to favorite',
      build: () {
        //  ignore: close_sinks
        final landmarksBloc = LandmarksBloc(landmarks);
        final showOnlyFavorite = ShowOnlyFavoriteCubit();

        return FilteredLandmarksBloc(landmarksBloc, showOnlyFavorite);
      },
      act: (bloc) {
        bloc.landmarksBloc.add(LandmarkEvent.toggleFavorite(landmarks.elementAt(1)));
      },
      expect: [
        landmarks.toList()
          ..replaceRange(1, 2, [landmarks.elementAt(1).copyWith(isFavorite: !landmarks.elementAt(1).isFavorite)]),
      ],
    );
  });
}
