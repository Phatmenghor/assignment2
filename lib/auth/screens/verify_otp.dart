import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:flutter_ui_ass2/auth/screens/reset_password.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../components/custom_button.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({super.key});

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const CustomRowAppBar(
                text: 'Verify OTP',
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Code has been send to +6282******39',
                  style: AppTextStyle.txt16.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              PinCodeTextField(
                length: 4,
                autoUnfocus: true,
                autoFocus: true,
                errorTextSpace: 30,
                keyboardType: TextInputType.number,
                obscureText: false,
                textInputAction: TextInputAction.search,
                cursorColor: Colors.grey,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(20),
                  fieldHeight: 68,
                  fieldWidth: 83,
                  activeColor: AppColor.greyColor,
                  borderWidth: 0.5,
                  activeFillColor: AppColor.whiteColor,
                  selectedColor: Colors.red,
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: false,
                controller: textEditingController,
                onCompleted: (v) {
                  Get.to(const ResetPasswordScreen());
                },
                onChanged: (value) {},
                appContext: context,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Resend code in',
                    style: AppTextStyle.txt16.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '56',
                    style: AppTextStyle.txt16.copyWith(
                        fontWeight: FontWeight.w400, color: AppColor.mainColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    's',
                    style: AppTextStyle.txt16.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomButtonText(
                  text: 'Next',
                  onTap: () {
                    Get.to(const ResetPasswordScreen());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
