import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/styles.dart';

class QuantityBottomSheet extends StatelessWidget {
  const QuantityBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2.5 ,
      decoration:  BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context , index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Center(child: Text('${index+1}', style: Styles.titleText,)),
              );
            }),
          ),
        ],
      ),
    );
  }
}
