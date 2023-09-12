import 'package:flutter/material.dart';
import 'package:shop_smart/features/search/persentation/widgets/search_text_field.dart';

import '../../../../core/utils/global_widgets/custom_appbar.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar(title: 'Store Product', needIcon: false),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: SearchTextField(
              searchController: searchController,
              onClearTap: () {
                setState(() {
                  searchController.clear();
                });
              },
              onChanged: (text) {
              },
              onSubmit: (text) {
              }),
        ),
      ],
    );
  }
}