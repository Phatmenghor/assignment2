import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';

import '../components/custom_text_form_field.dart';
import '../constants/app_color.dart';
import '../constants/app_font.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const CustomRowAppBar(
                text: 'Notification',
              ),
              const SizedBox(
                height: 36.5,
              ),
              CustomTextFormField(
                keyInputType: TextInputType.text,
                hintText: 'Search',
                suffixIcon: Icon(
                  Icons.search,
                  color: AppColor.subTitleColor,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      height: 97,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: AppColor.greyColor.withOpacity(0.40),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/chats/order_completed.png',
                            height: 55,
                            width: 55,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Your Order is completed!',
                                style: AppTextStyle.txt16,
                              ),
                              const Spacer(),
                              Text(
                                '20.00',
                                style: AppTextStyle.txt14.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 22.5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      height: 97,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: AppColor.greyColor.withOpacity(0.40),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/chats/order_completed.png',
                            height: 55,
                            width: 55,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 22.5,
                              ),
                              Text(
                                'Your Order is completed!',
                                style: AppTextStyle.txt16,
                              ),
                              const Spacer(),
                              Text(
                                '20.00',
                                style: AppTextStyle.txt14.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 22.5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Container(
                      height: 97,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: AppColor.greyColor.withOpacity(0.40),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/chats/order_completed.png',
                            height: 55,
                            width: 55,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 22.5,
                              ),
                              Text(
                                'Your Order is completed!',
                                style: AppTextStyle.txt16,
                              ),
                              const Spacer(),
                              Text(
                                '20.00',
                                style: AppTextStyle.txt14.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 22.5,
                              ),
                            ],
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
      ),
    );
  }
}
