import 'package:flutter/material.dart';
import 'package:shop_smart/features/product_detail/presentation/widgets/product_detail_body.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        body: SafeArea(child: ProductDetailBody()),
    );
  }
}


