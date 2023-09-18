import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/image_path.dart';

class HomeImageSwiper extends StatefulWidget {
  const HomeImageSwiper({super.key});

  @override
  State<HomeImageSwiper> createState() => _HomeImageSwiperState();
}

class _HomeImageSwiperState extends State<HomeImageSwiper> {
  List<String> bannersImage = [
    ImagePath.banner1 ,
    ImagePath.banner2 ,


  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 4),
      child: SizedBox(
        width: double.infinity,
        height: size.height / 5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Swiper(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(
                  bannersImage[index],
                  fit: BoxFit.fill,
                ),
              );
            },
            indicatorLayout: PageIndicatorLayout.SCALE,
            autoplay: true,
            itemCount: bannersImage.length ,
            pagination: const SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                    color: Colors.black , activeColor: Colors.blue
                )
            ),

          ),
        ),
      ),
    );
  }
}