import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_model/product_model.dart';
import 'package:shop_smart/features/search/persentation/widgets/product_item.dart';

class ItemsGridList extends StatelessWidget {
  const ItemsGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
        physics: const BouncingScrollPhysics(),
        builder: (context, index) {
          return ProductItem(
            height: 4,
            productModel: ProductModel.localProducts[index],
          );
        },
        itemCount: ProductModel.localProducts.length,
        crossAxisCount: 2);
  }
}
