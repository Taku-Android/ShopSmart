import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop_smart/config/app_routes.dart';
import 'package:shop_smart/config/dialog_utils.dart';

import '../../../../../core/utils/global_widgets/custom_button.dart';
import '../../../../../core/utils/global_widgets/custom_text_field.dart';
import '../../../../../core/utils/styles.dart';
import 'image_picker_container.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey<FormState> registerKey = GlobalKey();
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
    Size size = MediaQuery.of(context).size;

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
                          if(Navigator.canPop(context)){
                            Navigator.pop(context);
                          }
                          await pickImageFromCamera();
                      },
                      onGalleryPressed: () async {
                        if(Navigator.canPop(context)){
                          Navigator.pop(context);
                        }
                        await pickImageFromGallery();
                      },
                      onRemovePressed: (){
                        if(Navigator.canPop(context)){
                          Navigator.pop(context);
                        }
                        setState(() {
                          pickedImage = null ;
                        });
                      });
                }),
          ),
        ),
        CustomTextField(
          hint: 'Name',
          controller: nameController,
          onSubmit: (value) {},
          isPass: false,
          onShowTap: () {},
          icon: IconlyLight.user2,
          isSecure: false,
          validate: (submit) ? nameValidate() : true,
          errMessage: 'Invalid Name..',
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          hint: 'Email',
          controller: emailController,
          onSubmit: (value) {},
          isPass: false,
          onShowTap: () {},
          icon: IconlyLight.message,
          isSecure: false,
          validate: (submit) ? emailValidate() : true,
          errMessage: 'Invalid Email..',
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          hint: 'Password',
          controller: passController,
          onSubmit: (value) {
            if (!submit) {
              setState(() {
                submit = true;
              });
            }
          },
          isPass: true,
          onShowTap: () {
            if (isSecure) {
              setState(() {
                isSecure = false;
              });
            } else {
              setState(() {
                isSecure = true;
              });
            }
          },
          icon: IconlyLight.password,
          isSecure: isSecure,
          validate: (submit) ? passValidate() : true,
          errMessage: 'Password must be at least 8 character..',
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          hint: 'Confirm Password',
          controller: confPassController,
          onSubmit: (value) {
            if (!submit) {
              setState(() {
                submit = true;
              });
            }
          },
          isPass: true,
          onShowTap: () {},
          icon: IconlyLight.password,
          isSecure: true,
          validate: (submit) ? confValidate() : true,
          errMessage: 'password don`t match..',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 24),
          child: CustomButton(
              onPressed: () {},
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

  bool nameValidate() {
    if (nameController.text.trim().isEmpty ||
        nameController.text.trim().length < 6) {
      return false;
    }
    return true;
  }

  bool emailValidate() {
    if (emailController.text.trim().isEmpty) {
      return false;
    }
    return true;
  }

  bool passValidate() {
    if (passController.text.trim().isEmpty) {
      return false;
    } else if (passController.text.trim().length < 8) {
      return false;
    }
    return true;
  }

  bool confValidate() {
    if (confPassController.text.trim().isEmpty) {
      return false;
    } else if (confPassController.text != passController.text) {
      return false;
    }
    return true;
  }


  Future<void> pickImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    pickedImage =  await picker.pickImage(source: ImageSource.camera);

    setState(()  {
    });

  }

  Future<void> pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    pickedImage =  await picker.pickImage(source: ImageSource.gallery);

    setState(()  {
    });

  }


}
