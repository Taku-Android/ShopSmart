import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_smart/core/utils/styles.dart';

import '../theme_cubit/theme_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.horizontalPadding,
      required this.textColor,
      this.borderRadius, this.verticalPadding, this.textSize, this.image});

  final void Function()? onPressed;
  final String title;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;
  final double? textSize;
  final String? image;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    bool isDark = BlocProvider.of<ThemeCubit>(context).getIsDarkTheme;
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              (isDark) ? Colors.blue : Colors.blue[50]!),
          // Set the background color
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  borderRadius ?? 20), // Set the corner radius
            ),
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 2, vertical: verticalPadding ?? 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (image != null)?Image.asset(image! , width: 20, height: 20, fit: BoxFit.fill,) : const SizedBox.shrink() ,
              const SizedBox(width: 10,),
              Text(
                title,
                style: Styles.subTitleText.copyWith(
                    color: textColor ,
                  fontSize: textSize
                ),
              ),
            ],
          ),
        ));
  }
}
