

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_smart/core/utils/theme_cubit/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());


  bool _isDarkTheme = false ;
  bool get getIsDarkTheme => _isDarkTheme ;


  setThemeValue({required bool themeValue}){

  }

  getThemeValue(){

  }

}
