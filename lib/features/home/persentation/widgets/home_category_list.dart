import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/image_path.dart';

import 'home_categories_item.dart';

class HomeCategoriesList extends StatefulWidget {
  const HomeCategoriesList({super.key});



  @override
  State<HomeCategoriesList> createState() => _HomeCategoriesListState();
}

class _HomeCategoriesListState extends State<HomeCategoriesList> {

  List<String> names = [
    'Books',
    'Cosmetics',
    'Electronics',
    'Clothes',
    'Phones',
    'Laptops',
    'Shoes',
    'Watches',
  ] ;
  List<String> images = [
    ImagePath.book_img ,
    ImagePath.cosmetics ,
    ImagePath.electronics ,
    ImagePath.fashion ,
    ImagePath.mobiles ,
    ImagePath.pc ,
    ImagePath.shoes ,
    ImagePath.watch ,

  ] ;
  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
        builder: (context, index) {
          return  HomeCategoriesItem(name: names[index], image: images[index]);
        },
        physics: const NeverScrollableScrollPhysics(),
        itemCount: images.length,
        crossAxisCount: 4);
  }
}