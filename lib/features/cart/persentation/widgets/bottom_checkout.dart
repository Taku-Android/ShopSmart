import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_button.dart';
import 'package:shop_smart/core/utils/styles.dart';


class BottomCheckout extends StatelessWidget {
  const BottomCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return Container(
      height: size.height / 12  ,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: const Border(
          top: BorderSide(width: 0.3 , color: Colors.grey)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total (6 Products / 6 Items)',
                  style: Styles.text18,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8,),
                Text(
                  '\$14000',
                  style: Styles.subTitleText.copyWith(
                    color: Colors.blue
                  ),
                ),
              ],
            ) ,
            const Spacer(),
            CustomButton(onPressed: (){}, title: 'Checkout' , horizontalPadding: 8,)
          ],
        ),
      ),
    );
  }
}
