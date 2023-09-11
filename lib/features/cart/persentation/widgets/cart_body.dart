import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_appbar.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_empty_list.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/features/cart/persentation/widgets/bottom_checkout.dart';
import 'package:shop_smart/features/cart/persentation/widgets/custom_list_item.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key, required this.isEmpty});

  final bool isEmpty;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(
          title: 'Shopping basket',
          needIcon: !isEmpty,
        ),
        (isEmpty)
            ? CustomEmptyList(image: ImagePath.shopping_cart, page: 'cart')
            : const CustomListItem(),
       const Spacer(),
       const Divider(
         height: 2,
         color: Colors.grey,
       ),
       const SizedBox(height: 8,),
       const BottomCheckout()
      ],
    );
  }
}
