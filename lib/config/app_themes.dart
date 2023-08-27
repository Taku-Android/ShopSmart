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
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColor.darkScaffoldBackground,
          iconTheme: IconThemeData(color: Colors.white),
          toolbarTextStyle: TextStyle(
            color: Colors.white, // Set the text color for light theme
            fontSize: 22, // Set the font size
            fontWeight: FontWeight.bold, // Set the font weight
          ),
        ),
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
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColor.lightScaffoldBackground,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: TextStyle(
            color: Colors.black, // Set the text color for light theme
            fontSize: 22, // Set the font size
            fontWeight: FontWeight.bold, // Set the font weight
          ),
        ),
        navigationBarTheme: NavigationBarThemeData(
            elevation: 0,
            backgroundColor: AppColor.lightScaffoldBackground,
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
