import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_appbar.dart';
import 'package:shop_smart/features/product_detail/presentation/widgets/product_detail_image_and_price.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(
            title: 'ShopSmart',
            needIcon: false,
            goBack: true) ,
        ProductDetailImageAndPrice(),

      ],
    );
  }
}




