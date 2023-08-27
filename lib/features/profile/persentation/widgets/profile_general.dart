import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/core/utils/styles.dart';
import 'package:shop_smart/features/profile/persentation/widgets/general_custom_list.dart';

class ProfileGeneral extends StatelessWidget {
  const ProfileGeneral({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: Styles.text18,
          ),
          const SizedBox(
            height: 12,
          ),
          GeneralCustomList(title: 'All Order', image: ImagePath.order_svg, onTap: (){

          },),
          GeneralCustomList(title: 'Wishlist', image: ImagePath.wishlist_svg, onTap: (){

          },),
          GeneralCustomList(title: 'Viewed recently', image: ImagePath.recent, onTap: (){

          },),
          GeneralCustomList(title: 'Address', image: ImagePath.address, onTap: (){

          },),
        ],
      ),
    );
  }
}