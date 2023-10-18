import 'package:flutter/material.dart';

typedef Validator = String? Function(String?);

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
        required this.controller,
        required this.onSubmit,
        required this.isPass,
        required this.onShowTap,
        required this.icon,
        required this.isSecure,
        required this.validator,
        required this.hint});

  final TextEditingController controller;

  final bool isPass;
  final bool isSecure;

  final void Function(String) onSubmit;
  final void Function() onShowTap;
  final IconData icon;
  final Validator? validator;


  final String hint ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isSecure,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(12)),
        errorBorder: OutlineInputBorder(
          borderSide:
          BorderSide(width: 1, color: Theme.of(context).colorScheme.error),
        ),
        contentPadding: const EdgeInsets.all(10),
        prefixIcon: Icon(icon),
        suffixIcon: Visibility(
          visible: isPass,
          child: GestureDetector(
              onTap: onShowTap,
              child: const Icon(Icons.remove_red_eye_rounded)),
        ),
      ),

    );
  }
}