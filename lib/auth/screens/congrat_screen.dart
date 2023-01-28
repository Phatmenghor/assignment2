import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/constants/app_font.dart';
import 'package:flutter_ui_ass2/screens/main_screen.dart';
import 'package:get/get.dart';

import '../../components/custom_button.dart';
import '../../constants/app_color.dart';

class CongratLoginScreen extends StatelessWidget {
  const CongratLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.17,
                  ),
                  Image.asset(
                    'assets/images/congrat.png',
                    width: 177,
                    height: 177,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    'Congrats!',
                    style: AppTextStyle.txt32.copyWith(
                      color: AppColor.mainColor,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    'Your profile is ready to use!',
                    style: AppTextStyle.txt18.copyWith(
                      color: AppColor.subTitleColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.30,
                  ),
                  CustomButtonText(
                    text: 'Go homepage',
                    onTap: () {
                      Get.to(const MainScreen());
                    },
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
