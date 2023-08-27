import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_appbar.dart';
import 'package:shop_smart/features/profile/persentation/widgets/profile_general.dart';
import 'package:shop_smart/features/profile/persentation/widgets/profile_user_info.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(),
        ProfileUserInfo(userLoggedIn: false),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0 , vertical: 16),
          child: ProfileGeneral(),
        ),
      ],
    );
  }
}