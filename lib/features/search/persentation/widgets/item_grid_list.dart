import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart/features/search/persentation/widgets/product_item.dart';

class ItemsGridList extends StatelessWidget {
  const ItemsGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
      physics: const BouncingScrollPhysics(),
        builder: (context, index) {
          return const ProductItem(height: 4,);
        },
        itemCount: 20,
        crossAxisCount: 2);
  }
}
