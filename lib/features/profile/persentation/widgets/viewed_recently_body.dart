import 'package:flutter/material.dart';
import 'package:shop_smart/config/dialog_utils.dart';

import '../../../../core/utils/global_widgets/custom_empty_list.dart';
import '../../../../core/utils/global_widgets/custom_lists_appbar.dart';
import '../../../../core/utils/image_path.dart';
import '../../../search/persentation/widgets/item_grid_list.dart';

class ViewedRecentlyBody extends StatefulWidget {
  const ViewedRecentlyBody({super.key});

  @override
  State<ViewedRecentlyBody> createState() => _ViewedRecentlyBodyState();
}

class _ViewedRecentlyBodyState extends State<ViewedRecentlyBody> {

  bool isEmpty = false;

  int count = 3;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
          child: (isEmpty)
              ? const CustomListsAppbar(
            title: 'Viewed Recently',
          )
              : CustomListsAppbar(
            title: 'Viewed Recently ($count)',
            onPressed: (){
                DialogUtils.showAlertDialog(context);
            },
            iconData: Icons.delete_forever_sharp,
          ),
        ),
        (isEmpty)
            ? CustomEmptyList(image: ImagePath.order, page: 'Viewed Recently' , subTitle: 'You didn\'t view any product yet',)
            : const Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: ItemsGridList(),
            ))
      ],
    );
  }
}