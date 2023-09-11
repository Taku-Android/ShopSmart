import 'package:flutter/material.dart';
import 'package:shop_smart/features/cart/persentation/widgets/cart_body.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(child: CartBody(isEmpty: false))
    );
  }
}



