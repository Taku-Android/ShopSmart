

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_smart/core/utils/app_constants.dart';
import 'package:shop_smart/core/utils/helper.dart';
import 'package:shop_smart/core/utils/theme_cubit/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());


  bool _isDarkTheme = false ;
  bool get getIsDarkTheme => _isDarkTheme ;


  Future<void> setThemeValue({required bool themeValue})async {
      await Helper.saveUserThemeData(saveKey: kThemeKey , value: themeValue);
      _isDarkTheme = themeValue ;
      emit(ThemeChanged());
  }

  Future<void> getThemeValue()async{
    _isDarkTheme = await Helper.getUserThemeData(saveKey: kThemeKey) ?? false;
    emit(ThemeRetrieve());

  }

}
