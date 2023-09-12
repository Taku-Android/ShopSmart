import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField(
      {super.key, required this.searchController, required this.onClearTap, required this.onChanged, required this.onSubmit});

  final TextEditingController searchController;

  final void Function()? onClearTap;

  final void Function(String)? onChanged;

  final void Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.transparent),
            borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(12)),
        errorBorder: OutlineInputBorder(
          borderSide:
          BorderSide(width: 1, color: Theme
              .of(context)
              .colorScheme
              .error),
        ),
        contentPadding: const EdgeInsets.all(10),
        prefixIcon: const Icon(Icons.search),
        suffixIcon: GestureDetector(
            onTap: onClearTap,
            child: const Icon(Icons.clear)),
      ),
      onChanged: onChanged,
      onSubmitted: onSubmit,

    );
  }
}