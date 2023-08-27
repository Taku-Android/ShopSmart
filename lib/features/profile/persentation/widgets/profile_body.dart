import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_appbar.dart';
import 'package:shop_smart/features/profile/persentation/widgets/profile_general.dart';
import 'package:shop_smart/features/profile/persentation/widgets/profile_others.dart';
import 'package:shop_smart/features/profile/persentation/widgets/profile_settings.dart';
import 'package:shop_smart/features/profile/persentation/widgets/profile_user_info.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProfileUserInfo(userLoggedIn: false),
                ProfileGeneral(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                ProfileSettings(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                ProfileOthers(),
              ],
            ),
          ),
        ),


      ],
    );
  }
}



