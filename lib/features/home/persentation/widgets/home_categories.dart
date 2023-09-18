import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/styles.dart';
import 'package:shop_smart/features/home/persentation/widgets/home_category_list.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Categories', style: Styles.titleText,) ,
          const SizedBox(height: 10,),
          const Expanded(child: HomeCategoriesList()),
        ],
      ),
    );
  }
}