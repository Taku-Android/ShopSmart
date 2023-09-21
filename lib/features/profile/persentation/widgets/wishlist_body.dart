import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_button.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_empty_list.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_lists_appbar.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/features/search/persentation/widgets/item_grid_list.dart';

class WishlistBody extends StatefulWidget {
  const WishlistBody({super.key});

  @override
  State<WishlistBody> createState() => _WishlistBodyState();
}

class _WishlistBodyState extends State<WishlistBody> {
  bool isEmpty = false;

  int count = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
          child: (isEmpty)
              ? const CustomListsAppbar(
                  title: 'WishList',
                )
              : CustomListsAppbar(
                  title: 'WishList ($count)',
                  onPressed: (){
                    setState(() {
                      CupertinoAlertDialog(
                        title: Column(
                          children: [
                            Image.asset(ImagePath.warning),
                            const Text('All item in your wishlist will be removed'),

                          ],
                        ),
                        actions: [
                          CustomButton(onPressed: (){}, title: 'Cancel') ,
                          CustomButton(onPressed: (){}, title: 'Ok') ,

                        ],

                      ) ;
                    });

                  },
                  iconData: Icons.delete_forever_sharp,
                ),
        ),
        (isEmpty)
            ? CustomEmptyList(image: ImagePath.bag_wish, page: 'WishList')
            : const Expanded(
                child: Padding(
                padding: EdgeInsets.all(12.0),
                child: ItemsGridList(),
              ))
      ],
    );
  }
}
