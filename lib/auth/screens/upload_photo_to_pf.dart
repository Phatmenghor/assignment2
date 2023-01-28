import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:flutter_ui_ass2/screens/main_screen.dart';
import 'package:get/get.dart';

import '../../components/custom_button.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class UploadPhotoToProfileScreen extends StatelessWidget {
  const UploadPhotoToProfileScreen({super.key});

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
                height: 48,
              ),
              Text(
                'This data will be displayed in your account profile for security',
                style: AppTextStyle.txt16,
              ),
              const SizedBox(
                height: 48,
              ),
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.greyColor,
                      image: DecorationImage(
                        image: Image.asset('assets/images/pf.png').image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 2,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColor.mainColor,
                        borderRadius: BorderRadius.circular(66.67),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomButtonText(
                text: 'Next',
                onTap: () {
                  Get.to(const MainScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
