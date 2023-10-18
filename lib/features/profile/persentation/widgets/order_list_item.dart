import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/styles.dart';

import '../../../../core/utils/image_path.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width ,
      height: size.height / 5,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              width: 100,
              fit: BoxFit.fill,
              height: size.height / 5,
              imageUrl: "https",
              placeholder: (context, url) => Image.asset(ImagePath.loading),
              errorWidget: (context, url, error) =>
                  Image.asset(ImagePath.iphone),
            ),
          ),
          Container(
            width: size.width / 2.2,
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Apple Iphone 14 Pro (128GB) - Black ',
                    style: Styles.text18,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 16,),

                Text(
                  'Price: \$14000',
                  style: Styles.subTitleText,
                ),
                const SizedBox(height: 4,),
                Text(
                  'Qty: 10',
                  style: Styles.subTitleText,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: Align(
              alignment: Alignment.topRight,
              child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}