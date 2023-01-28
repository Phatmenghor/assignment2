import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:flutter_ui_ass2/auth/screens/verify_otp.dart';
import 'package:get/get.dart';
import '../../components/custom_button.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const CustomRowAppBar(
                text: 'Forgot Password',
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Select which contact details should we use to reset your password',
                style: AppTextStyle.txt16.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Container(
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
                        (Icons.chat),
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
                        const Text('via SMS:'),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          '+6282******39',
                          style: AppTextStyle.txt18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
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
                        Icons.mail,
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
                        const Text('via SMS:'),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'ex***le@yourdomain.com',
                          style: AppTextStyle.txt18,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomButtonText(
                text: 'Next',
                onTap: () {
                  Get.to(
                    const VerifyOTPScreen(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
