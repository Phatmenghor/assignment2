import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:get/get.dart';
import '../../../constants/app_color.dart';
import '../../../constants/app_font.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_form_field.dart';
import '../components/custom_text_star.dart';
import 'congrat_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool enabled = true;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomRowAppBar(
                text: 'Reset Your Password',
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                'Create a new password',
                style: AppTextStyle.txt16,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              const CustomTextStar(
                text: 'New Password',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomTextFormField(
                hintText: 'Input New Password',
                obscureText: enabled,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      enabled = !enabled;
                    });
                  },
                  icon: enabled
                      ? SvgPicture.asset('assets/icons/eye_open.svg')
                      : SvgPicture.asset('assets/icons/eye-off.svg'),
                ),
              ),
              SizedBox(height: height * 0.04),
              const CustomTextStar(
                text: 'Confirm New Password',
              ),
              SizedBox(
                height: height * 0.02,
              ),
              CustomTextFormField(
                hintText: 'Input Confirm New Password',
                obscureText: enabled,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      enabled = !enabled;
                    });
                  },
                  icon: enabled
                      ? SvgPicture.asset('assets/icons/eye_open.svg')
                      : SvgPicture.asset('assets/icons/eye-off.svg'),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        remember = !remember;
                      });
                    },
                    child: SizedBox(
                      height: 16,
                      width: 16,
                      child: remember
                          ? Image.asset('assets/icons/Checkbox.png')
                          : SvgPicture.asset(
                              'assets/icons/un_checkbox.svg',
                            ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.027,
                  ),
                  Text(
                    'Remember me',
                    style: AppTextStyle.txt16.copyWith(
                      color: AppColor.titleTextColor,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomButtonText(
                text: 'Save',
                onTap: () {
                  Get.to(const CongratLoginScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
