import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/app_colors.dart';

class AppThemes{
  static ThemeData themeData({required bool isDarkTheme , required BuildContext context}){
    if(isDarkTheme){
      return ThemeData(
        scaffoldBackgroundColor: AppColor.darkScaffoldBackground
      );
    }else{
      return ThemeData(
          scaffoldBackgroundColor: AppColor.lightScaffoldBackground
      );
    }
  }
}