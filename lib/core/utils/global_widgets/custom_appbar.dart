import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_smart/config/app_routes.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/core/utils/styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key,
      required this.title,
      required this.needIcon,
      required this.goBack});

  final String title;
  final bool needIcon;
  final bool goBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, bottom: 16, top: 8),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            (goBack)
                ? InkWell(
                    onTap: () {
                      AppRoutes.router.pop();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 15,
                      ),
                    ))
                : Image.asset(
                    ImagePath.shopping_cart,
                    width: 50,
                    height: 50,
                  ),
            (goBack)
                ? const Spacer()
                : const SizedBox(
                    width: 20,
                  ),
            SizedBox(
              child: Shimmer.fromColors(
                period: const Duration(seconds: 2),
                baseColor: Colors.purple,
                highlightColor: Colors.red,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Styles.subTitleText,
                ),
              ),
            ),

            // Text(
            //   title,
            //   textAlign: TextAlign.center,
            //   style: Styles.subTitleText,
            // ),
            const Spacer(),
            (needIcon)
                ? IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete_forever,
                      color: Colors.red,
                    ))
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
