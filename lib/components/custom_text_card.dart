import 'package:flutter/material.dart';
import '../../../constants/app_color.dart';
import '../../../constants/app_font.dart';

class CustomTextCard extends StatelessWidget {
  final String? text;
  final String? dollar;
  const CustomTextCard({
    Key? key,
    this.text,
    this.dollar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text ?? '',
          style: AppTextStyle.txt16.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.whiteColor,
          ),
        ),
        Text(
          dollar ?? '',
          style: AppTextStyle.txt20.copyWith(
            color: AppColor.whiteColor,
          ),
        ),
      ],
    );
  }
}
