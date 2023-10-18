import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop_smart/config/app_routes.dart';
import 'package:shop_smart/config/dialog_utils.dart';
import 'package:shop_smart/features/auth/persentation/widgets/register/register_form_design.dart';
import '../../../../../core/utils/global_widgets/custom_button.dart';
import '../../../../../core/utils/styles.dart';
import 'image_picker_container.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confPassController = TextEditingController();

  bool isSecure = true;
  bool submit = false;

  // image
  XFile? pickedImage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: SizedBox(
            width: size.width / 3,
            height: size.height / 7,
            child:
            ImagePickerContainer(pickedImage: pickedImage, function: () {
              DialogUtils.imagePickerDialog(context: context,
                  onCameraPressed: () async {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                    await pickImageFromCamera();
                  },
                  onGalleryPressed: () async {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                    await pickImageFromGallery();
                  },
                  onRemovePressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                    setState(() {
                      pickedImage = null;
                    });
                  });
            }),
          ),
        ),
        RegisterFormDesign(nameController: nameController,
            emailController: emailController,
            passController: passController,
            confPassController: confPassController ,
          registerKey: registerKey,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 24),
          child: CustomButton(
              onPressed: () {
                register();
              },
              title: 'Sign up',
              borderRadius: 8,
              verticalPadding: 12,
              textSize: 20,
              textColor: Colors.purple[700]!),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: () {
              AppRoutes.router.pop();
            },
            child: Text(
              'Already have an account ?',
              style: Styles.subTitleText,
            ),
          ),
        ),
      ],
    );
  }

  register() {
    if (registerKey.currentState?.validate() == false) {
      return;
    }
    if(pickedImage == null){
      DialogUtils.showAlertDialog(context: context, onPressed: (){}, title: 'Image is required', isCancel: false);
    }


  }


  Future<void> pickImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    pickedImage = await picker.pickImage(source: ImageSource.camera);

    setState(() {});
  }

  Future<void> pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    pickedImage = await picker.pickImage(source: ImageSource.gallery);

    setState(() {});
  }


}



