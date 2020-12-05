import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:landmarks/src/bloc/landmarks.dart';
import 'package:landmarks/src/data/landmarks.dart';
import 'package:landmarks/src/models/landmark.dart';

void main() {
  group('Landmarks BLoC', () {
    blocTest<LandmarksBloc, List<Landmark>>(
      'emit nothing when created',
      build: () {
        return LandmarksBloc(landmarks);
      },
      expect: [],
    );

    blocTest<LandmarksBloc, List<Landmark>>(
      'toggle already favorite park',
      build: () => LandmarksBloc(landmarks),
      act: (bloc) => bloc..add(LandmarkEvent.toggleFavorite(landmarks.elementAt(0))),
      expect: [
        [
          landmarks.take(1).first.copyWith(isFavorite: false),
          ...landmarks.skip(1),
        ]
      ],
    );

    blocTest<LandmarksBloc, List<Landmark>>(
      'toggle favorite park',
      build: () => LandmarksBloc(landmarks),
      act: (bloc) => bloc..add(LandmarkEvent.toggleFavorite(landmarks.elementAt(1))),
      expect: [
        [
          ...landmarks.take(1),
          landmarks.skip(1).take(1).first.copyWith(isFavorite: true),
          ...landmarks.skip(2),
        ]
      ],
    );
  });
}
