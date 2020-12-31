import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:landmarks/src/bloc/filtered_landmarks.dart';
import 'package:landmarks/src/bloc/landmarks.dart';
import 'package:landmarks/src/bloc/show_favorite.dart';
import 'package:landmarks/src/data/landmarks.dart';
import 'package:landmarks/src/models/landmark.dart';

void main() {
  group('Filtered Landmarks BLoC', () {
    ShowOnlyFavoriteCubit showOnlyFavorite;
    LandmarksBloc landmarksBloc;

    setUpAll(() {
      showOnlyFavorite = ShowOnlyFavoriteCubit();
      landmarksBloc = LandmarksBloc(landmarks);
    });

    tearDownAll(() async {
      await showOnlyFavorite.close();
      await landmarksBloc.close();
    });

    blocTest<FilteredLandmarksBloc, List<Landmark>>(
      'emit nothing when created',
      build: () {
        return FilteredLandmarksBloc(landmarksBloc, showOnlyFavorite);
      },
      expect: [],
    );

    blocTest<FilteredLandmarksBloc, List<Landmark>>(
      'toggle favorite',
      build: () {
        return FilteredLandmarksBloc(landmarksBloc, showOnlyFavorite);
      },
      act: (bloc) {
        showOnlyFavorite.toggle();
      },
      expect: [
        [
          ...landmarks.where((element) => element.isFavorite),
        ]
      ],
    );
  });
}
