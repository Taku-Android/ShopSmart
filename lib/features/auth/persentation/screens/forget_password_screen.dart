import 'package:flutter/material.dart';
import 'package:shop_smart/features/auth/persentation/widgets/forget_password_body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child: ForgetPasswordBody()),
    );
  }
}


