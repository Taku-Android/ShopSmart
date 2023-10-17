import 'package:flutter/material.dart';
import 'package:shop_smart/config/app_routes.dart';
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
          children: [
            Expanded(
              flex: 2,
              child: CustomButton(
                  onPressed: () {},
                  title: 'Sign in with Google',
                  horizontalPadding: 8,
                  verticalPadding: 16,
                  borderRadius: 12,
                  textSize: 14,
                  image: ImagePath.google,
                  textColor: Colors.black),
            ),
            const SizedBox(width: 8,),
            Expanded(
              child: CustomButton(
                  onPressed: () {},
                  title: 'Guest?',
                  horizontalPadding: 4,
                  verticalPadding: 16,
                  borderRadius: 12,
                  textSize: 16,
                  textColor: Colors.purple[700]!),
            ),



          ],
        ),
        const SizedBox(height: 16,),

        Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don`t have an account?',
                style: Styles.subTitleText,
              ),
              const SizedBox(width: 8,),
              GestureDetector(
                onTap: (){
                  AppRoutes.router.push(AppRoutes.kRegisterScreen);
                },
                child: Text(
                  'Sign up',
                  style: Styles.subTitleText.copyWith(
                      fontSize: 20 ,
                      fontWeight: FontWeight.w700 ,
                      decoration: TextDecoration.underline ,
                      color: Colors.purple[700]

                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}