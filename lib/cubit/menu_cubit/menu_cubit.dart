import 'package:bloc/bloc.dart';
import 'package:final_exam/cubit/menu_cubit/menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuInitial());

  int menuIndex = 0;

  changeMenuIndex(index) {
    menuIndex = index;
    emit(MenuChangeState());
  }
}
