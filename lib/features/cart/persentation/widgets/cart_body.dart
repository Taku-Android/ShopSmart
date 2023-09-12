import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_appbar.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_empty_list.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/features/cart/persentation/widgets/cart_list_view.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key, required this.isEmpty});

  final bool isEmpty;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;

    return Padding(
      padding:  EdgeInsets.only(bottom: size.height / 12 ),
      child: Column(
        children: [
          CustomAppbar(
            title: 'Shopping basket',
            needIcon: !isEmpty,
          ),
          (isEmpty)
              ?  CustomEmptyList(image: ImagePath.shopping_cart, page: 'cart')
              : const Expanded(child: CartListView()),

        ],
      ),
    );
  }
}


