import 'package:bloc/bloc.dart';

class ShowOnlyFavoriteCubit extends Cubit<bool> {
  ShowOnlyFavoriteCubit() : super(false);

  void toggle() => emit(!state);
}
