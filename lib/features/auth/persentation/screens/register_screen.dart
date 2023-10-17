import 'package:flutter/material.dart';
import '../widgets/register/register_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: const RegisterBody(),
    );
  }
}
