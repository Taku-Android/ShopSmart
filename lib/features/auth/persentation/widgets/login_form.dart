import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_button.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_text_field.dart';
import 'package:shop_smart/core/utils/styles.dart';
import 'package:shop_smart/features/auth/persentation/widgets/sign_in_third_party_or_sign_up.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool isSecure = true;
  bool submit = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextField(
            controller: emailController,
            onSubmit: (value) {},
            isPass: false,
            onShowTap: () {},
            icon: IconlyLight.message,
            isSecure: false,
            validate: (submit) ? emailValidate() : true,
            errMessage: 'Invalid Email..',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            controller: passController,
            onSubmit: (value) {
              if (!submit) {
                setState(() {
                  submit = true;
                });
              }
            },
            isPass: true,
            onShowTap: () {
              if (isSecure) {
                setState(() {
                  isSecure = false;
                });
              } else {
                setState(() {
                  isSecure = true;
                });
              }
            },
            icon: IconlyLight.password,
            isSecure: isSecure,
            validate: (submit) ? passValidate() : true,
            errMessage: 'Password must be at least 8 character..',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password ?',
                style: Styles.titleText.copyWith(
                    color: Colors.purple[700],
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline ,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0, bottom: 16),
            child: CustomButton(
                onPressed: () {},
                title: 'Sign in',
                borderRadius: 8,
                verticalPadding: 12,
                textSize: 20,
                textColor: Colors.purple[700]!),
          ),
          const SignInThirdPartyOrSignUp(),
        ],
      ),
    );
  }

  bool emailValidate() {
    if (emailController.text.trim().isEmpty) {
      return false;
    }
    return true;
  }

  bool passValidate() {
    if (passController.text.trim().isEmpty) {
      return false;
    } else if (passController.text.trim().length < 8) {
      return false;
    }
    return true;
  }
}


