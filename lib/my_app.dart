import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_smart/config/app_routes.dart';
import 'package:shop_smart/config/app_themes.dart';
import 'package:shop_smart/core/utils/theme_cubit/theme_cubit.dart';
import 'package:shop_smart/core/utils/theme_cubit/theme_state.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          routerConfig: AppRoutes.router,
          debugShowCheckedModeBanner: false,
          theme: AppThemes.themeData(
              isDarkTheme: BlocProvider
                  .of<ThemeCubit>(context)
                  .getIsDarkTheme,
              context: context),
        );

      },
    );
  }
}

