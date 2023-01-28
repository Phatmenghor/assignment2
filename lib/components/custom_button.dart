import 'package:flutter/material.dart';

import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class CustomButtonText extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  const CustomButtonText({
    Key? key,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: AppColor.mainColor,
        ),
        child: Text(
          text ?? '',
          style: AppTextStyle.txt20.copyWith(
            fontSize: 18,
            color: AppColor.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
