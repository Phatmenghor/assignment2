import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class CustomRowAppBar extends StatelessWidget {
  final String? text;
  const CustomRowAppBar({
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          padding: const EdgeInsets.only(left: 11),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColor.mainOpacityColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Text(
          text ?? '',
          style: AppTextStyle.txt26,
        ),
      ],
    );
  }
}
