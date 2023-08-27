import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/utils/styles.dart';

class GeneralCustomList extends StatelessWidget {
  const GeneralCustomList({
    super.key, required this.title, required this.image, required this.onTap, required this.onIconTap,
  });

  final String title ;
  final String image ;
  final void Function()? onTap ;
  final void Function()? onIconTap ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(
        image,
        width: 30,
        height: 30,
      ),
      title: Text(title , style: Styles.text18!.copyWith(
          fontWeight: FontWeight.w500
      ),),
      trailing: IconButton(
        onPressed: onIconTap,
        icon:  const Icon(IconlyLight.arrowRight2, color: Colors.grey,),
      ),
    );
  }
}