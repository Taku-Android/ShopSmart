import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/theme_cubit/theme_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SwitchListTile(
              value: BlocProvider.of<ThemeCubit>(context)
                  .getIsDarkTheme,
              onChanged: (value) {

                BlocProvider.of<ThemeCubit>(context)
                    .setThemeValue(themeValue: value);
              })
        ],
      ),
    );
  }
}
