import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/utils/styles.dart';

import '../../../../core/utils/theme_cubit/theme_cubit.dart';

class AddingToCartAndFavProductDetail extends StatefulWidget {
  const AddingToCartAndFavProductDetail({super.key});

  @override
  State<AddingToCartAndFavProductDetail> createState() =>
      _AddingToCartAndFavProductDetailState();
}

class _AddingToCartAndFavProductDetailState
    extends State<AddingToCartAndFavProductDetail> {
  bool fav = false;

  bool itemAdded = false;

  @override
  Widget build(BuildContext context) {
    bool isDark = BlocProvider.of<ThemeCubit>(context).getIsDarkTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue[400],
                    borderRadius: BorderRadius.circular(30)),
                child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      if (fav) {
                        setState(() {
                          fav = false;
                        });
                      } else {
                        setState(() {
                          fav = true;
                        });
                      }
                    },
                    child: (fav)
                        ? const Icon(
                            IconlyBold.heart,
                            color: Colors.red,
                          )
                        : const Icon(IconlyLight.heart)),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        (isDark)?Colors.blue:Colors.blue[50]!), // Set the background color to red
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Set the border radius to 20
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (itemAdded) {
                        itemAdded = false;
                      } else {
                        itemAdded = true;
                      }
                    });
                  },
                  icon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: (itemAdded)
                        ?  Icon(Icons.shopping_cart , color: (isDark)?Colors.white:Colors.black,)
                        :  Icon(IconlyLight.bag , color: (isDark)?Colors.white:Colors.black,),
                  ),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: (itemAdded)
                        ?  Text('Item added to cart' , style: Styles.text16.copyWith(
                      color: (isDark)?Colors.white:Colors.black
                    ),)
                        : Text('Add item to cart', style: Styles.text16.copyWith(
                        color: (isDark)?Colors.white:Colors.black
                    )),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('About this item' , style: Styles.titleText,) ,
              Text('in Phones' , style: Styles.subTitleText,) ,
            ],
          ),
        ) ,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('The iPhone 14 is a new smartphone from Apple '
              'that comes in two sizes: 6.1 inches and 6.7 inches1.'
              ' It has a glass and aluminum or stainless steel design'
              ' with Ceramic Shield and IP68 rating23. It has a dual-camera '
              'system with a new Main camera, an Ultra Wide camera, and a front'
              ' TrueDepth camera1. It also has a new safety feature called Crash Detection'
              ' that can call emergency services via satellite1. The iPhone 14 Pro '
              'and Pro Max have additional features like a telephoto camera and a high-refresh-rate screen' ,
              maxLines: 9,
            overflow: TextOverflow.ellipsis,
            style: Styles.subTitleText,

          ),
        ),

      ],
    );
  }
}
