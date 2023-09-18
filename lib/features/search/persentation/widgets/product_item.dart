import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../core/utils/styles.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key, required this.height});

  final int height ;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FancyShimmerImage(
              imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png',
              width: size.width  ,
              height: size.height / widget.height,
              boxFit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 4),
            child: Row(
              children: [
                SizedBox(
                  width: size.width / 3,
                  child: Text(
                    'Apple Iphone 14 Pro (128GB) - Black ',
                    style: Styles.text16,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
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
              ],
            ),
          ) ,
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 4),

            child: Row(
              children: [
                Text(
                  '\$14000',
                  style: Styles.text18.copyWith(
                    color: Colors.blue ,
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue ,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child:const Icon(Icons.add_shopping_cart , size: 20,),
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}