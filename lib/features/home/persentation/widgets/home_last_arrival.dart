import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import 'home_last_arrival_list.dart';

class HomeLastArrival extends StatelessWidget {
  const HomeLastArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Last Arrival' , style: Styles.titleText,) ,
          const SizedBox(height: 10,),
          const Expanded(child: HomeLastArrivalList()),


        ],
      ),
    );
  }
}