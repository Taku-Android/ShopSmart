import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/config/app_routes.dart';
import 'package:shop_smart/core/utils/global_model/product_model.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/core/utils/theme_cubit/theme_cubit.dart';

import '../../../../core/utils/styles.dart';

class ProductItem extends StatefulWidget {
  const ProductItem(
      {super.key, required this.height, required this.productModel});

  final int height;
  final ProductModel productModel;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    bool isDark = BlocProvider.of<ThemeCubit>(context).getIsDarkTheme;
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        AppRoutes.router.push(AppRoutes.kProductDetail);
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                width: size.width,
                height: size.height / widget.height,
                imageUrl: widget.productModel.productImage??'',
                placeholder: (context, url) => Image.asset(ImagePath.loading),
                errorWidget: (context, url, error) =>
                    Image.asset(ImagePath.iphone),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width / 3,
                    child: Text(
                      '${widget.productModel.productTitle} ',
                      style: Styles.text16,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
              child: Row(
                children: [
                  Text(
                    '${widget.productModel.productPrice}',
                    style: Styles.text18.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: (isDark) ? Colors.blue : Colors.blue[50],
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.add_shopping_cart,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
