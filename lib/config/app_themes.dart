import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/app_colors.dart';

class AppThemes {
  static ThemeData themeData(
      {required bool isDarkTheme, required BuildContext context}) {
    if (isDarkTheme) {
      return ThemeData(
        scaffoldBackgroundColor: AppColor.darkScaffoldBackground,
        cardColor: AppColor.darkCardColor,
        brightness: Brightness.dark,
        navigationBarTheme: NavigationBarThemeData(
            elevation: 0,
            backgroundColor: AppColor.darkScaffoldBackground,
            labelTextStyle: MaterialStateProperty.resolveWith<TextStyle?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                );
              } else {
                return const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                );
              }
            })),
      );
    } else {
      return ThemeData(
        scaffoldBackgroundColor: AppColor.lightScaffoldBackground,
        cardColor: AppColor.lightScaffoldBackground,
        // to change the text color
        brightness: Brightness.light,
        navigationBarTheme: NavigationBarThemeData(
            elevation: 0,
            backgroundColor: AppColor.lightPrimary,
            labelTextStyle: MaterialStateProperty.resolveWith<TextStyle?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                );
              } else {
                return const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                );
              }
            })),
      );
    }
  }
}
