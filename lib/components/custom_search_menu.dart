import 'package:flutter/material.dart';
import '../constants/app_color.dart';
import '../constants/app_font.dart';

class CustomSearchMenu extends StatelessWidget {
  const CustomSearchMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 28, right: 12),
            height: 44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColor.greyColor.withOpacity(0.20)),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                suffixIcon: const Icon(Icons.search),
                hintStyle: AppTextStyle.txt14.copyWith(
                  color: AppColor.titleTextColor.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColor.mainColor.withOpacity(0.20),
          ),
          child: Icon(
            Icons.menu_outlined,
            color: AppColor.mainColor,
          ),
        ),
      ],
    );
  }
}
