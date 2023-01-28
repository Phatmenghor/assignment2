import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:flutter_ui_ass2/screens/set_location.dart';
import 'package:get/get.dart';

import '../components/custom_total_card.dart';
import '../constants/app_color.dart';
import '../constants/app_font.dart';

class DeliveryToScreen extends StatelessWidget {
  const DeliveryToScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: const CustomRowAppBar(
                text: 'Driver to',
              ),
            ),
            const SizedBox(
              height: 28.5,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Select which contact details should we use to reset your password',
                style: AppTextStyle.txt16.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.whiteColor.withOpacity(0.4),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColor.mainColor.withOpacity(
                        0.10,
                      ),
                    ),
                    child: Icon(
                      (Icons.location_on_outlined),
                      size: 32,
                      color: AppColor.mainColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Home'),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Bung Tomo St. 109',
                        style: AppTextStyle.txt18,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.whiteColor.withOpacity(0.4),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppColor.mainColor.withOpacity(
                        0.10,
                      ),
                    ),
                    child: Icon(
                      (Icons.location_on_outlined),
                      size: 32,
                      color: AppColor.mainColor,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('office'),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Mayjen Sungkono St. 55',
                        style: AppTextStyle.txt18,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 293,
              child: Column(
                children: [
                  CustomCardTotalMoney(
                    text: 'Next',
                    onTaped: () {
                      Get.to(const SetLocationScreen());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
