import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_empty_list.dart';
import 'package:shop_smart/core/utils/image_path.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         CustomEmptyList(image: ImagePath.shopping_cart, page: 'cart',)
        ],
      ),
    );
  }
}
