import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/utils/theme_cubit/theme_cubit.dart';

class ImagePickerContainer extends StatelessWidget {
  const ImagePickerContainer(
      {super.key, required this.pickedImage, required this.function});

  final XFile? pickedImage;

  final Function()? function;

  @override
  Widget build(BuildContext context) {
    bool isDark = BlocProvider.of<ThemeCubit>(context).getIsDarkTheme;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
              child: pickedImage == null
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: isDark? Colors.white : Colors.black
                        ),
                      ),
                    )
                  : Image.file(
                      File(pickedImage!.path),
                      fit: BoxFit.cover,
                      width: 100,
                height: 300,
                    )),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: InkWell(
            onTap: function,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: (isDark) ? Colors.blue : Colors.blue[50],
                  borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                Icons.add_a_photo_outlined,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
