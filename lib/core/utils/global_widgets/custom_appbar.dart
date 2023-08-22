import 'package:flutter/cupertino.dart';
import 'package:shop_smart/core/utils/image_path.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0 , bottom: 16 , top: 8),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset( ImagePath.shopping_cart ,
            width: 50,height: 50,
            ),
            const SizedBox(width: 20,),
            const Text('ShopSmart'),

          ],
        ),
      ),
    );
  }
}
