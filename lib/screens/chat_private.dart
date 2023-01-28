import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:get/get.dart';
import '../../constants/app_color.dart';
import '../constants/app_font.dart';
import 'call_loading_private.dart';

class ChatPrivateScreen extends StatelessWidget {
  const ChatPrivateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: const CustomRowAppBar(
                text: 'Chat Private',
              ),
            ),
            const SizedBox(
              height: 16.5,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.whiteColor.withOpacity(0.60),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/chats/GuyHawkins.png',
                      width: 42,
                      height: 42,
                    ),
                    const SizedBox(
                      width: 27,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 7,
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
                          height: 7,
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(const CallLoadingScreen());
                      },
                      child: Container(
                        width: 42,
                        height: 42,
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
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        children: [
                          Container(
                            width: 125,
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.greyColor.withOpacity(
                                0.20,
                              ),
                            ),
                            child: Text(
                              'Just to order',
                              style: AppTextStyle.txt16.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 235,
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.mainColor.withOpacity(
                                0.70,
                              ),
                            ),
                            child: Text(
                              "Ok, what's the spicy level?",
                              style: AppTextStyle.txt16.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColor.whiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.greyColor.withOpacity(
                                0.20,
                              ),
                            ),
                            child: Text(
                              'Okay, wait a minute 👍',
                              style: AppTextStyle.txt16.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColor.titleTextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        children: [
                          Container(
                            width: 125,
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.greyColor.withOpacity(
                                0.20,
                              ),
                            ),
                            child: Text(
                              'Just to order',
                              style: AppTextStyle.txt16.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 235,
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.mainColor.withOpacity(
                                0.70,
                              ),
                            ),
                            child: Text(
                              "Ok, what's the spicy level?",
                              style: AppTextStyle.txt16.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColor.whiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.greyColor.withOpacity(
                                0.20,
                              ),
                            ),
                            child: Text(
                              'Okay, wait a minute 👍',
                              style: AppTextStyle.txt16.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColor.titleTextColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: const CustomTextFieldMessage(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextFieldMessage extends StatelessWidget {
  const CustomTextFieldMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: AppColor.whiteColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: 0.6,
          color: AppColor.subTitleColor,
        ),
      ),
      padding: const EdgeInsets.only(left: 24, right: 12),
      alignment: Alignment.center,
      child: TextFormField(
        style: AppTextStyle.txt16,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.send,
            color: AppColor.mainColor,
          ),
          hintStyle: AppTextStyle.txt16.copyWith(
            color: AppColor.subTitleColor,
          ),
        ),
      ),
    );
  }
}
