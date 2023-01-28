import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/screens/upload_location.dart';
import 'package:get/get.dart';

import '../../components/custom_button.dart';
import '../../components/custom_text_form_field.dart';
import '../../constants/app_font.dart';
import '../components/custom_row_appbar.dart';
import '../components/custom_text_star.dart';

class FillYourBioScreen extends StatelessWidget {
  const FillYourBioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SafeArea(
            child: Column(
              children: [
                const CustomRowAppBar(
                  text: 'Fill in your bio',
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  'This data will be displayed in your account profile for security',
                  style: AppTextStyle.txt16.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: const CustomTextStar(
                    text: 'Full Name',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomTextFormField(
                  keyInputType: TextInputType.name,
                  hintText: 'Input Full Name',
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: const CustomTextStar(
                    text: 'Nick Name',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomTextFormField(
                  keyInputType: TextInputType.name,
                  hintText: 'Input Nickname',
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: const CustomTextStar(
                    text: 'Phone Number',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomTextFormField(
                  keyInputType: TextInputType.number,
                  hintText: 'Input Phone Number',
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: const CustomTextStar(
                    text: 'Gender',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomTextFormField(
                  keyInputType: TextInputType.text,
                  hintText: 'Input Gender',
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: const CustomTextStar(
                    text: 'Date of Birth',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomTextFormField(
                  keyInputType: TextInputType.text,
                  hintText: 'Input Date of birth',
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 24),
                  child: const CustomTextStar(
                    text: 'address',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomTextFormField(
                  keyInputType: TextInputType.streetAddress,
                  hintText: 'Input your address',
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButtonText(
                  text: 'Next',
                  onTap: () {
                    Get.to(const UploadLocationScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
