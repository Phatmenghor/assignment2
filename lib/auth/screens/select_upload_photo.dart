import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:flutter_ui_ass2/auth/screens/upload_photo_to_pf.dart';
import 'package:flutter_ui_ass2/components/custom_button.dart';
import 'package:get/get.dart';
import '../../constants/app_font.dart';
import '../components/custom_upload_photo.dart';

class SelectUploadPhotoScreen extends StatelessWidget {
  const SelectUploadPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const CustomRowAppBar(
                text: 'Upload your photo',
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                'This data will be displayed in your account profile for security',
                style: AppTextStyle.txt16.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomButtonUpload(
                text: 'Take photo',
                svg: 'assets/icons/camera.svg',
              ),
              const SizedBox(
                height: 24,
              ),
              const CustomButtonUpload(
                text: 'Take photo',
                svg: 'assets/icons/folder.svg',
              ),
              const Spacer(),
              CustomButtonText(
                onTap: () {
                  Get.to(const UploadPhotoToProfileScreen());
                },
                text: 'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
