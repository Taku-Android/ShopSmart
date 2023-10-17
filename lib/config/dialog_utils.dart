import 'package:flutter/material.dart';
import 'package:shop_smart/config/app_routes.dart';
import 'package:shop_smart/core/utils/global_widgets/custom_button.dart';
import 'package:shop_smart/core/utils/image_path.dart';
import 'package:shop_smart/core/utils/styles.dart';

class DialogUtils {
  static showAlertDialog({
    required BuildContext context,
    required Function() onPressed,
    required String title,
    required bool isCancel,
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
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
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

  static Future<void> imagePickerDialog({
    required BuildContext context,
    required void Function()? onCameraPressed,
    required void Function()? onGalleryPressed,
    required void Function()? onRemovePressed,
  }) async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0), // Set the border radius
            ),
            title: Center(
              child: Text(
                'Choose option',
                style: Styles.text18,
              ),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  TextButton.icon(
                    onPressed: onCameraPressed,
                    icon: const Icon(Icons.camera, color: Colors.black,),
                    label: Text(
                      'Camera',
                      style: Styles.text16,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: onGalleryPressed,
                    icon: const Icon(Icons.image_outlined , color: Colors.black,),
                    label: Text(
                      'Gallery',
                      style: Styles.text16,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: onRemovePressed,
                    icon: const Icon(Icons.remove_circle_outline_sharp, color: Colors.black,),
                    label: Text(
                      'remove',
                      style: Styles.text16,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
