import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';
import 'call_loading_private.dart';
import 'chat_private.dart';

class DeliveryComingSoonScreen extends StatelessWidget {
  const DeliveryComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/delivery_coming.png'),
              ],
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 28, right: 12),
                          height: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColor.greyColor.withOpacity(0.20)),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              suffixIcon: const Icon(Icons.search),
                              hintStyle: AppTextStyle.txt14.copyWith(
                                color: AppColor.titleTextColor.withOpacity(0.8),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  height: 169,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColor.greyColor.withOpacity(0.30),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 24, top: 24),
                        child: Row(
                          children: [
                            Text(
                              'Track order',
                              style: AppTextStyle.txt14,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        margin: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColor.whiteColor.withOpacity(0.60),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 13,
                            ),
                            Image.asset(
                              'assets/chats/GuyHawkins.png',
                              width: 62,
                              height: 62,
                            ),
                            const SizedBox(
                              width: 21,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  'Guy Hawkins',
                                  style: AppTextStyle.txt18,
                                ),
                                const Spacer(),
                                Text(
                                  'Online',
                                  style: AppTextStyle.txt14.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.to(const CallLoadingScreen());
                              },
                              child: Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColor.mainColor.withOpacity(0.20),
                                ),
                                child: Icon(
                                  Icons.call,
                                  color: AppColor.mainColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(const ChatPrivateScreen());
                              },
                              child: Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColor.mainColor.withOpacity(0.20),
                                ),
                                child: Icon(
                                  Icons.chat,
                                  color: AppColor.mainColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
