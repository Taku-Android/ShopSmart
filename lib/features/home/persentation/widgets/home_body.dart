import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_appbar.dart';
import 'package:shop_smart/features/home/persentation/widgets/home_image_swiper.dart';
import 'home_categories.dart';
import 'home_last_arrival.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppbar(title: 'ShopSmart', needIcon: false , goBack: false,),
        const SizedBox(height: 10,),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const HomeImageSwiper(),
                SizedBox(
                    height: size.height / 2.6,
                    child: const HomeLastArrival()),
                SizedBox(
                    height: size.height / 3.6,
                    child: const HomeCategories())

              ],
            ),
          ),
        ),




      ],
    );
  }
}










