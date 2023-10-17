import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_smart/features/auth/persentation/widgets/login_form.dart';

import '../../../../core/utils/styles.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

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
                    'ShopSmart',
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
              'Welcome Back ',
              textAlign: TextAlign.center,
              style: Styles.titleText.copyWith(fontSize: 24),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Let`s get you logged in so you can start exploring',
              style: Styles.subTitleText,
            ),
            const SizedBox(
              height: 16,
            ),
            const LoginForm(),
          ],
        ),
      ),
    );
  }
}



