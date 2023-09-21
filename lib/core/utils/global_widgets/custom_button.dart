import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_smart/core/utils/styles.dart';

import '../theme_cubit/theme_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.title, required this.horizontalPadding});

  final void Function()? onPressed;
  final String title ;
  final double horizontalPadding ;
  @override
  Widget build(BuildContext context) {
    bool isDark = BlocProvider.of<ThemeCubit>(context).getIsDarkTheme;
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>((isDark)?Colors.blue:Colors.blue[50]!), // Set the background color
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Set the corner radius
            ),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: horizontalPadding , vertical: 8),
          child: Text(title , style:  Styles.subTitleText.copyWith(
      color: Colors.purple[700]
    ),),
        ));
  }
}
