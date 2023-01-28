import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/screens/call_speak_with_client.dart';
import 'package:flutter_ui_ass2/screens/chat_private.dart';
import 'package:get/get.dart';

import '../constants/app_color.dart';
import '../constants/app_font.dart';

class CallLoadingScreen extends StatelessWidget {
  const CallLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.17,
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
              'Guy Hawkin',
              style: AppTextStyle.txt32.copyWith(
                color: AppColor.mainColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Ringing ...',
              style: AppTextStyle.txt18.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const ChatPrivateScreen());
                  },
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(125),
                      color: AppColor.mainColor.withOpacity(0.20),
                    ),
                    child: Icon(
                      Icons.cancel,
                      size: 30,
                      color: AppColor.mainColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const CallSpeakWithClientScreen());
                  },
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(125),
                      color: AppColor.greenColor.withOpacity(0.20),
                    ),
                    child: Icon(
                      Icons.call,
                      size: 30,
                      color: AppColor.greenColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
