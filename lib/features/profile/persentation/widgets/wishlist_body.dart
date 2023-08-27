import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_empty_list.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_lists_appbar.dart';
import 'package:shop_smart/core/utils/image_path.dart';

class WishlistBody extends StatelessWidget {
  const WishlistBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0 , horizontal: 8),
            child: CustomListsAppbar(title: 'WishList', iconData:Icons.delete_forever_sharp,),
          ),
          CustomEmptyList(image: ImagePath.bag_wish, page: 'WishList')
        ],
    );
  }
}