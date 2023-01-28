import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class CustomIconsButton extends StatelessWidget {
  final String? svg;
  final String? text;
  const CustomIconsButton({
    this.svg,
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.whiteColor,
      ),
      margin: const EdgeInsets.only(right: 12),
      height: 57,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(svg ?? ''),
          const SizedBox(
            width: 12,
          ),
          Text(
            text ?? '',
            style: AppTextStyle.txt16,
          )
        ],
      ),
    );
  }
}
