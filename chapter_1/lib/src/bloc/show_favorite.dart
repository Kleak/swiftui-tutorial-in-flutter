import 'package:bloc/bloc.dart';

class ShowOnlyFavoriteCubit extends Cubit<bool> {
  ShowOnlyFavoriteCubit() : super(true);

  void toggle() => emit(!state);
}
