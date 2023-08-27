import 'package:flutter/material.dart';
import 'package:shop_smart/config/app_routes.dart';

class CustomListsAppbar extends StatelessWidget {
  const CustomListsAppbar({super.key, required this.title, required this.iconData});

  final String title ;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){
          AppRoutes.router.pop();
        }, icon: const Icon(Icons.arrow_back_ios_new , size: 15,)),
        const SizedBox(width: 16,),
        Text(title , style: Theme.of(context).appBarTheme.toolbarTextStyle,),
        const Spacer(),
        IconButton(onPressed: (){}, icon:  Icon(iconData , size: 30 ,))
      ],
    );
  }
}
