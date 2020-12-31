import 'package:bloc/bloc.dart';

class ShowOnlyFavoriteCubit extends Cubit<bool> {
  ShowOnlyFavoriteCubit({bool defaultValue = false}) : super(defaultValue);

  void toggle() => emit(!state);
}
