import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:flutter_ui_ass2/auth/screens/set_your_location.dart';
import 'package:get/get.dart';

import '../../components/custom_button.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class UploadLocationScreen extends StatelessWidget {
  const UploadLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const CustomRowAppBar(
                text: 'Upload Location',
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'This data will be displayed in your account profile for security',
                style: AppTextStyle.txt16.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColor.whiteColor.withOpacity(0.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 1,
                              color: AppColor.subTitleColor,
                            ),
                            color: AppColor.mainColor.withOpacity(0.10),
                          ),
                          child: Icon(
                            Icons.location_on,
                            color: AppColor.mainColor,
                          ),
                        ),
                        Text(
                          'Set location',
                          style: AppTextStyle.txt16,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomButtonText(
                text: 'Next',
                onTap: () {
                  Get.to(const SetYourLocationMapScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
