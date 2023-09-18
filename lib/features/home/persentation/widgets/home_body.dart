import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_appbar.dart';
import 'package:shop_smart/features/home/persentation/widgets/home_image_swiper.dart';

import 'home_last_arrival.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbar(title: 'ShopSmart', needIcon: false),
        SizedBox(height: 20,),
        HomeImageSwiper(),
        Expanded(child: HomeLastArrival()),

      ],
    );
  }
}





