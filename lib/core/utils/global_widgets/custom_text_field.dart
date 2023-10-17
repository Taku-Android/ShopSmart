import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
        required this.controller,
        required this.onSubmit,
        required this.isPass,
        required this.onShowTap,
        required this.icon,
        required this.isSecure,
        required this.validate,
        required this.errMessage, required this.hint});

  final TextEditingController controller;

  final bool isPass;
  final bool isSecure;

  final void Function(String) onSubmit;
  final void Function() onShowTap;
  final IconData icon;
  final bool validate;

  final String errMessage;
  final String hint ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isSecure,
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
        errorText: (!validate) ? errMessage : null,
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
      onSubmitted: onSubmit,
    );
  }
}