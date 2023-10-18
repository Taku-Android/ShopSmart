import 'package:flutter/material.dart';
import 'package:shop_smart/features/profile/persentation/widgets/order_list_item.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 8,
      itemBuilder: (context , index){
        return const OrderListItem();
      },
    );
  }
}