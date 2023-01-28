import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';

import '../../constants/app_color.dart';
import '../../constants/app_font.dart';
import '../components/custom_search_menu.dart';
import '../models/food_restaurant_model.dart';

class SearchRestaurantFoodScreen extends StatelessWidget {
  const SearchRestaurantFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const CustomRowAppBar(
                text: 'Find your food',
              ),
              const SizedBox(height: 36.5),
              const CustomSearchMenu(),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 128,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        width: 2,
                        color: AppColor.mainColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Restaurant',
                          style: AppTextStyle.txt16.copyWith(
                            color: AppColor.mainColor,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.cancel_outlined,
                          color: AppColor.mainColor,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 97,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        width: 2,
                        color: AppColor.mainColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '< 5 Km',
                          style: AppTextStyle.txt16.copyWith(
                            color: AppColor.mainColor,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.cancel_outlined,
                          color: AppColor.mainColor,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: GridView.builder(
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 32,
                    crossAxisSpacing: 24,
                  ),
                  itemCount: foodModel.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 180,
                      height: 184,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.grey.withOpacity(0.20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 24,
                          ),
                          Image.asset(
                            foodModel[index].image ?? 'assets/icons/chat.png',
                            width: 68.03,
                            height: 60,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Text(foodModel[index].text ?? '',
                              style: AppTextStyle.txt18),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            foodModel[index].subTitle ?? '',
                            style: AppTextStyle.txt14.copyWith(
                              color: AppColor.subTitleColor,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
