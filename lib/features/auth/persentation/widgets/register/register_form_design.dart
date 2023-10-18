import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_text_field.dart';

class RegisterFormDesign extends StatefulWidget {
  const RegisterFormDesign(
      {super.key, required this.nameController, required this.emailController, required this.passController, required this.confPassController, required this.registerKey});

  final TextEditingController nameController;

  final TextEditingController emailController;

  final TextEditingController passController;

  final TextEditingController confPassController;
  final GlobalKey registerKey ;

  @override
  State<RegisterFormDesign> createState() => _RegisterFormDesignState();
}

class _RegisterFormDesignState extends State<RegisterFormDesign> {

  bool isSecure = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.registerKey,
      child: Column(
        children: [
          CustomTextField(
            hint: 'Name',
            controller: widget.nameController,
            onSubmit: (value) {},
            isPass: false,
            onShowTap: () {},
            icon: IconlyLight.user2,
            isSecure: false,
            validator: (text) {
              if (widget.nameController.text
                  .trim()
                  .isEmpty) {
                return 'Please enter your name..';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Email',
            controller: widget.emailController,
            onSubmit: (value) {},
            isPass: false,
            onShowTap: () {},
            icon: IconlyLight.message,
            isSecure: false,
            validator: (text) {
              if (widget.emailController.text
                  .trim()
                  .isEmpty) {
                return 'Please enter your email..';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Password',
            controller: widget.passController,
            onSubmit: (value) {

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
            validator: (text) {
              if (widget.passController.text
                  .trim()
                  .isEmpty) {
                return 'Please enter your password..';
              }
              if (widget.passController.text
                  .trim()
                  .length < 6) {
                return 'Password at least 6 character..';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Confirm Password',
            controller: widget.confPassController,
            onSubmit: (value) {

            },
            isPass: true,
            onShowTap: () {},
            icon: IconlyLight.password,
            isSecure: true,
            validator: (text) {
              if (widget.confPassController.text
                  .trim()
                  .isEmpty) {
                return 'Please enter confirmation..';
              }
              if (widget.confPassController.text
                  .trim()
                  != widget.passController.text.trim()) {
                return 'Password don`t match..';
              }

              return null;
            },
          ),
        ],
      ),
    );
  }
}