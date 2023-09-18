import 'package:flutter/material.dart';
import 'package:shop_smart/features/search/persentation/widgets/product_item.dart';

class HomeLastArrivalList extends StatelessWidget {
  const HomeLastArrivalList({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 6,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context , index){
        return  SizedBox(
          width: size.width / 2 ,
          child: const ProductItem(height: 6,),
        );
      },
    );
  }
}
