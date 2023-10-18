import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_appbar.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_empty_list.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/features/profile/persentation/widgets/order_list_view.dart';

class OrderBody extends StatefulWidget {
  const OrderBody({super.key});

  @override
  State<OrderBody> createState() => _OrderBodyState();
}

class _OrderBodyState extends State<OrderBody> {
   bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(
          title: 'Placed order',
          needIcon: !isEmpty,
          goBack: true,
        ),
        (isEmpty)
            ?  CustomEmptyList(image: ImagePath.order, page: 'Orders')
            : const Expanded(child: OrderListView())

      ],
    );
  }
}



