import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_smart/core/utils/theme_cubit/theme_cubit.dart';
import 'my_app.dart';

void main() {
  runApp(BlocProvider(
      create: (BuildContext context) => ThemeCubit()..getThemeValue(),
      child: const MyApp()));
}
