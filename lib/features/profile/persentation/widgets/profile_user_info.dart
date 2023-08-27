import 'package:flutter/material.dart';
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
            : Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).cardColor,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.background,
                            width: 3),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png"),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmed Ibrahim',
                        style: Styles.titleText,
                      ),
                      Text(
                        'ahmed.ibrahim6894@gmail.com',
                        style: Styles.subTitleText,
                      )
                    ],
                  ),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
                ],
              ));
  }
}
