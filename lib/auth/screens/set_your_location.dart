import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:flutter_ui_ass2/auth/screens/select_upload_photo.dart';
import 'package:get/get.dart';

import '../../components/custom_button.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class SetYourLocationMapScreen extends StatelessWidget {
  const SetYourLocationMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const CustomRowAppBar(
                text: 'Set your location',
              ),
              const SizedBox(
                height: 28.5,
              ),
              Text(
                'This data will be displayed in your account profile for security',
                style: AppTextStyle.txt16.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 470,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: Image.asset(
                      'assets/images/map.png',
                    ).image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 5),
                height: 96,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: AppColor.mainColor,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.whiteColor),
                child: ListTile(
                  leading: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: AppColor.mainColor.withOpacity(0.10),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.location_on,
                      size: 20,
                      color: AppColor.mainColor,
                    ),
                  ),
                  title: Text(
                    'Location',
                    style: AppTextStyle.txt14.copyWith(
                      color: AppColor.subTitleColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    'Bung Tomo St. 109',
                    style: AppTextStyle.txt17.copyWith(
                      color: AppColor.titleTextColor,
                    ),
                  ),
                  trailing: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.82),
                      color: AppColor.mainColor,
                    ),
                    child: Icon(
                      Icons.edit,
                      size: 16,
                      color: AppColor.whiteColor,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              CustomButtonText(
                text: 'Set location',
                onTap: () {
                  Get.to(const SelectUploadPhotoScreen());
                },
              ),
              // const SizedBox(
              //   height: 48,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
