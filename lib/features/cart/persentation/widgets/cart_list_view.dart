import 'package:flutter/material.dart';
import 'package:shop_smart/features/cart/persentation/widgets/custom_list_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context , index){
        return const CustomListItem();
      },
    );
  }
}