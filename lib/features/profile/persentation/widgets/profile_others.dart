import 'package:flutter/material.dart';
import 'package:shop_smart/config/app_routes.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/core/utils/styles.dart';
import 'package:shop_smart/features/profile/persentation/widgets/general_custom_list.dart';

class ProfileOthers extends StatelessWidget {
  const ProfileOthers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Others',
            style: Styles.text18,
          ),
          GeneralCustomList(
            title: 'Privacy & Policy',
            image: ImagePath.privacy,
            onTap: () {},
            onIconTap: () {},
          ),
          Center(
            child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                // Set the background color to red
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        20), // Set the border radius to 20
                  ),
                ),
              ),
              onPressed: () {
                AppRoutes.router.pushReplacement(AppRoutes.kLoginScreen);
              },
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
            ),
          )
        ],
      ),
    );
  }
}
