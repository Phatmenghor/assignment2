import 'package:flutter/material.dart';

import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class CustomTextStar extends StatelessWidget {
  final String? text;
  const CustomTextStar({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text ?? '',
          style: AppTextStyle.txt16.copyWith(
            color: AppColor.titleTextColor,
          ),
        ),
        // SvgPicture.asset('assets/icons/star.svg'),
        Text(
          '*',
          style: TextStyle(color: AppColor.mainColor),
        ),
      ],
    );
  }
}
