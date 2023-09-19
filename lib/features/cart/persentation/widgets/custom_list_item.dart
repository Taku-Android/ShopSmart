import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/utils/styles.dart';
import 'package:shop_smart/features/cart/persentation/widgets/quantity_bottom_sheet.dart';

class CustomListItem extends StatefulWidget {
  const CustomListItem({super.key});

  @override
  State<CustomListItem> createState() => _CustomListItemState();
}

class _CustomListItemState extends State<CustomListItem> {
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height / 5,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: FancyShimmerImage(
              imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png',
              width: 100,
              boxFit: BoxFit.fill,
            ),
          ),
          Container(
            width: size.width / 2.5,
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: Text(
                    'Apple Iphone 14 Pro (128GB) - Black ',
                    style: Styles.text18,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '\$14000',
                  style: Styles.subTitleText,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(onTap: () {}, child: const Icon(Icons.delete_forever_sharp , color: Colors.red,)),
              const Spacer(),
              InkWell(
                  onTap: () {
                    if (fav) {
                      setState(() {
                        fav = false;
                      });
                    } else {
                      setState(() {
                        fav = true;
                      });
                    }
                  },
                  child: (fav)
                      ? const Icon(
                    IconlyBold.heart,
                          color: Colors.red,
                        )
                      : const Icon(IconlyLight.heart)),
              const Spacer(),
              OutlinedButton.icon(

                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    side: const BorderSide(width: 1 , color: Colors.blue)
                ),
                onPressed: () {
                    showCustomBottomSheet();
                },
                icon: const Icon(IconlyLight.arrowDown2),
                label: const Text('Qty: 6'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void showCustomBottomSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context , builder: (_){

      return const QuantityBottomSheet();
    });

  }

}
