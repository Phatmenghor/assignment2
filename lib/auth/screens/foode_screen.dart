import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/screens/sign_in.dart';
import 'package:get/get.dart';

import '../../components/custom_button.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class FoodeScreen extends StatelessWidget {
  const FoodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset('assets/images/hand_sanvic.png'),
            ],
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    'Foode',
                    style: AppTextStyle.txt20.copyWith(
                      fontSize: 33,
                      color: AppColor.whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'The best food ordering and delivery app of the century',
                    style: AppTextStyle.txt20.copyWith(
                      fontSize: 14,
                      color: AppColor.whiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButtonText(
                    text: 'Next',
                    onTap: () {
                      Get.to(const SignInScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
