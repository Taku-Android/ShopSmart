import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/styles.dart';

class ProductDetailImageAndPrice extends StatelessWidget {
  const ProductDetailImageAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FancyShimmerImage(
              imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png',
              width: size.width  ,
              height: size.height / 2.8,
              boxFit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0 , vertical: 8),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  'Apple Iphone 14 Pro (128GB) - Black ',
                  style: Styles.titleText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  '\$1399.99',
                  style: Styles.titleText.copyWith(
                      color: Colors.blue
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}