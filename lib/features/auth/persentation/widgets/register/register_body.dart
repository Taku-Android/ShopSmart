import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_smart/core/utils/app_constants.dart';

import '../../../../../core/utils/styles.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                child: Shimmer.fromColors(
                  period: const Duration(seconds: 2),
                  baseColor: Colors.purple,
                  highlightColor: Colors.red,
                  child: Text(
                    kAppName,
                    textAlign: TextAlign.center,
                    style: Styles.headerText,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: Styles.titleText.copyWith(fontSize: 24),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Sign up now to receive special offers and updates from us',
              style: Styles.subTitleText,
            ),
            const SizedBox(
              height: 16,
            ),

          ],
        ),
      ),
    );
  }
}