import 'package:flutter/material.dart';
import 'package:shop_smart/config/app_routes.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_button.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/core/utils/styles.dart';

class DialogUtils {
  static  showAlertDialog(
      {required BuildContext context,
      required  Function() onPressed,
      required String title ,
      required bool isCancel ,
      }) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(24.0), // Adjust the radius as needed
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0 , horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    ImagePath.warning,
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      title,
                      style: Styles.titleText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: isCancel,
                        child: CustomButton(
                          onPressed: () {
                            AppRoutes.router.pop();
                          },
                          title: 'Cancel',
                          horizontalPadding: 16,
                          textColor: Colors.greenAccent,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomButton(
                        onPressed: () async {
                          await onPressed();
                          AppRoutes.router.pop();
                        },
                        title: 'Ok',
                        horizontalPadding: 16,
                        textColor: Colors.red,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
