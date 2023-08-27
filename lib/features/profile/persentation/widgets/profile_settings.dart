import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_smart/core/utils/styles.dart';
import 'package:shop_smart/core/utils/theme_cubit/theme_cubit.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  bool isLight = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Settings',
          style: Styles.text18,
        ),
        SwitchListTile(
            title: Text(BlocProvider.of<ThemeCubit>(context).getIsDarkTheme
                ? 'Dark Mode'
                : 'Light Mode'),
            value: BlocProvider.of<ThemeCubit>(context).getIsDarkTheme,
            onChanged: (value) {
              setState(() {});
              setState(() {
                BlocProvider.of<ThemeCubit>(context)
                    .setThemeValue(themeValue: value);
              });
            })
      ],
    );
  }
}