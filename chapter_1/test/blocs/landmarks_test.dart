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
        return LandmarksBloc();
      },
      act: (bloc) => bloc.add(LandmarkEvent.toggleFavorite(landmarks.first)),
      expect: [
        [
          landmarks.take(1).first.copyWith(isFavorite: false),
          ...landmarks.skip(1),
        ]
      ],
    );
  });
}
