import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_ass2/auth/screens/forgot_password.dart';
import 'package:flutter_ui_ass2/auth/screens/sign_up.dart';
import 'package:flutter_ui_ass2/screens/main_screen.dart';
import 'package:get/get.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_form_field.dart';

import '../../constants/app_color.dart';
import '../../constants/app_font.dart';
import '../components/custom_icon_button.dart';
import '../components/custom_text_star.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool enabled = true;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 192.2,
                      height: 192,
                      child: Image.asset('assets/icons/foode.png'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Sign in to your account',
                  style: AppTextStyle.txt23,
                ),
                const SizedBox(
                  height: 33.5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: const CustomTextStar(
                    text: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomTextFormField(
                  keyInputType: TextInputType.emailAddress,
                  hintText: 'Email or Phone Number',
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: const CustomTextStar(
                    text: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomTextFormField(
                  keyInputType: TextInputType.visiblePassword,
                  hintText: 'Password',
                  obscureText: enabled,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          enabled = !enabled;
                        });
                      },
                      icon: enabled
                          ? SvgPicture.asset('assets/icons/eye_open.svg')
                          : SvgPicture.asset('assets/icons/eye-off.svg')),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            remember = !remember;
                            debugPrint("$remember");
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
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Remember me',
                        style: AppTextStyle.txt16.copyWith(
                          color: AppColor.titleTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonText(
                  text: 'Sign in',
                  onTap: () {
                    Get.to(const MainScreen());
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const ForgotPasswordScreen());
                  },
                  child: Text(
                    'Forgot the password?',
                    style:
                        AppTextStyle.txt16.copyWith(color: AppColor.mainColor),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Or Continue with',
                  style: AppTextStyle.txt16,
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: CustomIconsButton(
                        text: 'Facebook',
                        svg: 'assets/icons/facebook.svg',
                      ),
                    ),
                    Expanded(
                        child: CustomIconsButton(
                      text: 'Google',
                      svg: 'assets/icons/google.svg',
                    )),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: AppTextStyle.txt16.copyWith(
                        color: AppColor.subTitleColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const SignUpScreen());
                      },
                      child: Text(
                        'Sign up',
                        style: AppTextStyle.txt16.copyWith(
                          color: AppColor.mainColor,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
