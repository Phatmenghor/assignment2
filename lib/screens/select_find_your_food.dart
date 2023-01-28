import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:flutter_ui_ass2/components/custom_search_menu.dart';
import 'package:flutter_ui_ass2/screens/search_find_restaurant.dart';
import 'package:flutter_ui_ass2/screens/search_find_your_food.dart';
import 'package:get/get.dart';
import '../../constants/app_color.dart';
import '../components/custom_button.dart';
import '../constants/app_font.dart';

class SelectFindYourFoodScreen extends StatelessWidget {
  const SelectFindYourFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List type = [
      {'type': 'Restaurant'},
      {'type': 'Menu'},
    ];
    List location = [
      {'location': '1 km'},
      {'location': '< 5 km'},
      {'location': '< 5 km'},
      {'location': '> 5 km'},
    ];
    List food = [
      'Cake',
      'Salad',
      'Pasta',
      'Desert',
    ];
    List foods = [
      'Main course',
      'Appetizer',
      'Soup',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomRowAppBar(
                  text: 'Find your foods',
                ),
                const SizedBox(
                  height: 36.5,
                ),
                const CustomSearchMenu(),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Type',
                  style: AppTextStyle.txt20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ...type.map((e) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(const SearchRestaurantFoodScreen());
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              width: 2,
                              color: AppColor.mainColor,
                            ),
                          ),
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 13, vertical: 8),
                            child: Text(
                              e['type'],
                              style: AppTextStyle.txt16.copyWith(
                                color: AppColor.mainColor,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                Text(
                  'Locaton',
                  style: AppTextStyle.txt20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ...location.map((e) {
                      return Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            width: 2,
                            color: AppColor.mainColor,
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          child: Text(
                            e['location'],
                            style: AppTextStyle.txt16.copyWith(
                              color: AppColor.mainColor,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                Text(
                  'Food',
                  style: AppTextStyle.txt20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Wrap(
                          spacing: 14,
                          verticalDirection: VerticalDirection.up,
                          clipBehavior: Clip.hardEdge,
                          children: [
                            ...food.map((e) {
                              return Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    width: 2,
                                    color: AppColor.mainColor,
                                  ),
                                ),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: Text(
                                    e,
                                    style: AppTextStyle.txt16.copyWith(
                                      color: AppColor.mainColor,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                          spacing: 14,
                          verticalDirection: VerticalDirection.up,
                          clipBehavior: Clip.hardEdge,
                          children: [
                            ...foods.map((e) {
                              return Container(
                                alignment: Alignment.center,
                                // margin: const EdgeInsets.only(right: 14),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  border: Border.all(
                                    width: 2,
                                    color: AppColor.mainColor,
                                  ),
                                ),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  child: Text(
                                    e,
                                    style: AppTextStyle.txt16.copyWith(
                                      color: AppColor.mainColor,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.18,
                ),
                CustomButtonText(
                  text: 'Search',
                  onTap: () {
                    Get.to(const SearchFindYourFoodScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
