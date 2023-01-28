import 'package:flutter/material.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final bool? obscureText;
  final Widget? suffixIcon;

  final TextInputType? keyInputType;

  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.keyInputType,
    this.obscureText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteOpacityColor,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: 0.6,
          color: AppColor.subTitleColor,
        ),
      ),
      height: 48,
      padding: const EdgeInsets.only(left: 24, right: 12),
      child: TextFormField(
        style: AppTextStyle.txt16,
        keyboardType: keyInputType ?? TextInputType.text,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText ?? '',
          suffixIcon: suffixIcon ??
              TextButton(
                onPressed: () {},
                child: const Text(''),
              ),
          hintStyle: AppTextStyle.txt16.copyWith(
              color: AppColor.subTitleColor, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
