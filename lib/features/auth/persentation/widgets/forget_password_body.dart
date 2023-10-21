import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_appbar.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_button.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_text_field.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/core/utils/styles.dart';

class ForgetPasswordBody extends StatefulWidget {
  const ForgetPasswordBody({super.key});

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: CustomAppbar(
            title: 'ShopSmart',
            needIcon: false,
            goBack: true,
          ),
        ),
        GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    ImagePath.forgot_password,
                    width: size.width,
                    height: size.height / 5,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Forget Password',
                  style: Styles.headerText,
                ),
                Text(
                  'please enter the email address you`d like your\n'
                      'password reset information sent to',
                  style: Styles.subTitleText,
                ),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: CustomTextField(
                    controller: emailController,
                    onSubmit: (text) {},
                    isPass: false,
                    onShowTap: () {},
                    icon: Icons.email_outlined,
                    isSecure: false,
                    validator: (text) {
                      if (emailController.text.trim().isEmpty) {
                        return 'Please enter your email..';
                      }
                      return null;
                    },
                    hint: 'youremail@email.com',
                  ),
                ),
                CustomButton(
                  onPressed: () {
                    resetPassword();
                  },
                  title: 'Request link',
                  textColor: Colors.white,
                  backGroundColor: Colors.blue,
                  borderRadius: 12,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void resetPassword() {}


}