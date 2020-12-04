import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:landmarks/src/bloc/show_favorite.dart';

void main() {
  group('ShowOnlyFavoriteCubit', () {
    blocTest<ShowOnlyFavoriteCubit, bool>(
      'emit nothing when created',
      build: () {
        return ShowOnlyFavoriteCubit();
      },
      expect: [],
    );

    blocTest<ShowOnlyFavoriteCubit, bool>(
      'toggle',
      build: () {
        return ShowOnlyFavoriteCubit();
      },
      act: (cubit) => cubit..toggle()..toggle(),
      expect: [
        true,
        false,
      ],
    );
  });
}
