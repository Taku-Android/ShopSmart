import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_model/product_model.dart';
import 'package:shop_smart/features/search/persentation/widgets/product_item.dart';

class HomeLastArrivalList extends StatelessWidget {
  const HomeLastArrivalList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: ProductModel.localProducts.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SizedBox(
          width: size.width / 2,
          child: ProductItem(
            height: 6,
            productModel: ProductModel.localProducts[index],
          ),
        );
      },
    );
  }
}
