import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class CustomButtonUpload extends StatelessWidget {
  final String? text;
  final String? svg;
  const CustomButtonUpload({
    this.text,
    this.svg,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.subTitleColor, width: 0.5),
        color: AppColor.whiteOpacityColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.3,
                    color: AppColor.subTitleColor,
                  ),
                  borderRadius: BorderRadius.circular(100),
                  color: AppColor.mainOpacityColor,
                ),
                padding: const EdgeInsets.all(22),
                child: SvgPicture.asset(
                  svg ?? '',
                  color: AppColor.mainColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text ?? '',
                style: AppTextStyle.txt16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
