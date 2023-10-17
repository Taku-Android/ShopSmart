import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/core/utils/styles.dart';

class ProfileUserInfo extends StatelessWidget {
  const ProfileUserInfo({super.key, required this.userLoggedIn});

  final bool userLoggedIn;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: (userLoggedIn)
            ? Text(
                'Please login to have ultimate access',
                style: Styles.titleText,
              )
            : Expanded(
              child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).cardColor,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.background,
                          width: 3,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          ImagePath.user, // Replace with your actual image path
                          width: 60,
                          height: 60,
                          fit: BoxFit.fill, // Adjust the fit as per your requirement
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ahmed Ibrahim',
                          style: Styles.titleText,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: AutoSizeText(
                            'ahmed.ibrahim6894@gmail.com',
                            maxLines: 1,
                            style: Styles.subTitleText,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
                  ],
                ),
            ));
  }
}
