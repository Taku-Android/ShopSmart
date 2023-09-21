import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/styles.dart';

class CustomEmptyList extends StatelessWidget {
  const CustomEmptyList({super.key, required this.image, required this.page, this.subTitle});


  final String image ;
  final String page ;
  final String? subTitle ;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 30),
              child: Image.asset(image),
            ) ,
            Center(
              child: Text('Whoops!' , style: Styles.headerText.copyWith(
                color: Colors.red ,
                fontWeight: FontWeight.w700
              ),),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Text((subTitle == null)?'Your $page is empty':'You didn\'t view any product yet'  , style: Styles.titleText.copyWith(
                  fontWeight: FontWeight.w700
              ),),
            ),
            const SizedBox(height: 20,),
            (subTitle == null)?Text('Looks like you have not added anything to your $page. \n '
                'Go ahead & explore top categories' ,textAlign: TextAlign.center, style: Styles.subTitleText,)
            : const SizedBox.shrink(),
            const SizedBox(height: 20,),

            Center(
              child: ElevatedButton(onPressed: (){},
                style:  ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>
                    (Colors.blue[50]!), // Set the background color to red
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Shop now' , style: Styles.text18.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor
                    ),),
                  ),),
            )

          ],
        ),
      ),
    );
  }
}
