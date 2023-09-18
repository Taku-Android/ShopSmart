import 'package:flutter/material.dart';

class HomeCategoriesItem extends StatelessWidget {
  const HomeCategoriesItem({super.key, required this.name, required this.image});
  final String name ;
  final String image ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image , width: 55, height:55 ,) ,
        const SizedBox(height: 4,),
        Text(name , style: const TextStyle(
          fontSize: 14 ,
          fontWeight: FontWeight.w700
        ),)
      ],
    );
  }
}
