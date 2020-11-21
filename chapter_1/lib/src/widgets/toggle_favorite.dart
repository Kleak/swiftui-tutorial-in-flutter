import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:landmarks/src/bloc/show_favorite.dart';

class ToggleFavorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final showOnlyFavorite = context.select((ShowOnlyFavoriteCubit cubit) => cubit.state);
    return CupertinoSwitch(
      value: showOnlyFavorite,
      onChanged: (newValue) {
        context.read<ShowOnlyFavoriteCubit>().toggle();
      },
    );
  }
}
