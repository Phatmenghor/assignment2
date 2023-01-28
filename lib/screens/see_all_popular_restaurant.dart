import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import '../../components/custom_search_menu.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';
import '../models/food_restaurant_model.dart';

class SeeAllPopularRestaurantScreen extends StatelessWidget {
  const SeeAllPopularRestaurantScreen({super.key});

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
                text: 'Popular Restaurant',
              ),
              const SizedBox(
                height: 36,
              ),
              const CustomSearchMenu(),
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
