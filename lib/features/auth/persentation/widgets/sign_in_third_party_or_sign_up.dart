import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_button.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/core/utils/styles.dart';

class SignInThirdPartyOrSignUp extends StatelessWidget {
  const SignInThirdPartyOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'OR CONNECT USING',
            style: Styles.subTitleText.copyWith(fontSize: 22 , fontWeight: FontWeight.w500),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
                onPressed: () {},
                title: 'Sign in with Google',
                horizontalPadding: 8,
                verticalPadding: 16,
                borderRadius: 12,
                image: ImagePath.google,
                textColor: Colors.black),
            CustomButton(
                onPressed: () {},
                title: 'Guest?',
                horizontalPadding: 8,
                verticalPadding: 16,
                borderRadius: 12,
                textSize: 18,
                textColor: Colors.purple[700]!),



          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 46.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don`t have an account?',
                  style: Styles.text18.copyWith(fontSize: 20 , fontWeight: FontWeight.w700),
                ),
                const SizedBox(width: 8,),
                Text(
                  'Sign up',
                  style: Styles.subTitleText.copyWith(
                      fontSize: 22 ,
                      fontWeight: FontWeight.w700 ,
                      decoration: TextDecoration.underline ,
                      color: Colors.purple[700]

                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}