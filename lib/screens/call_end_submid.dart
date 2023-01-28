import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/screens/main_screen.dart';
import 'package:get/get.dart';

import '../components/custom_button.dart';
import '../constants/app_color.dart';
import '../constants/app_font.dart';

class CallEndSubmidScreen extends StatelessWidget {
  const CallEndSubmidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          Container(
            width: 155,
            height: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 6,
                color: AppColor.mainColor,
              ),
            ),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/chats/GuyHawkins.png',
              width: 155,
              height: 155,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Thank You!',
            style: AppTextStyle.txt32.copyWith(
              color: AppColor.mainColor,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Order completed',
            style: AppTextStyle.txt32.copyWith(
              color: AppColor.mainColor,
            ),
          ),
          const Spacer(),
          Text(
            'Please rate the driver',
            style: AppTextStyle.txt18.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/chats/star purple500.png',
                width: 32,
                height: 32,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/chats/star purple500.png',
                width: 32,
                height: 32,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/chats/star purple500.png',
                width: 32,
                height: 32,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/chats/star purple500.png',
                width: 32,
                height: 32,
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/chats/star_border.png',
                width: 32,
                height: 32,
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: () {
              // Get.to(const CallEndSubmitScreen());
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.15),
              ),
              padding: const EdgeInsets.only(left: 28, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Leave feedback ...'),
                  Icon(
                    Icons.edit,
                    color: AppColor.mainColor,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: CustomButtonText(
              onTap: () {
                Get.offAll(const MainScreen());
              },
              text: 'Submit',
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
