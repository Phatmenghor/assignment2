import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';
import '../../models/popular_menu_model.dart';
import '../components/custom_search_menu.dart';

class SearchFindYourFoodScreen extends StatelessWidget {
  const SearchFindYourFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: SafeArea(
          child: Column(
            children: [
              const CustomRowAppBar(
                text: 'Find your food',
              ),
              const SizedBox(
                height: 36.5,
              ),
              const CustomSearchMenu(),
              const SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 70,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        width: 2,
                        color: AppColor.mainColor,
                      ),
                    ),
                    child: Text(
                      'Menu',
                      style: AppTextStyle.txt16.copyWith(
                        color: AppColor.mainColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 71,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        width: 2,
                        color: AppColor.mainColor,
                      ),
                    ),
                    child: Text(
                      'Salad',
                      style: AppTextStyle.txt16.copyWith(
                        color: AppColor.mainColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 77,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        width: 2,
                        color: AppColor.mainColor,
                      ),
                    ),
                    child: Text(
                      '< 5 Km',
                      style: AppTextStyle.txt16.copyWith(
                        color: AppColor.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: popularMenuModel.length,
                    physics: const ScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        alignment: Alignment.center,
                        height: 88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.grey.withOpacity(0.20),
                        ),
                        padding: const EdgeInsets.only(right: 12),
                        child: ListTile(
                          leading: Image.asset(
                            popularMenuModel[index].leading ??
                                'assets/icons/Vector.png',
                          ),
                          title: Text(
                            popularMenuModel[index].text ?? '',
                            style: AppTextStyle.txt18,
                          ),
                          subtitle: Text(
                            popularMenuModel[index].subTitle ?? '',
                            style: AppTextStyle.txt14.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          trailing: Text(
                            popularMenuModel[index].trailing ?? '',
                            style: AppTextStyle.txt29.copyWith(
                              color: AppColor.mainColor,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
