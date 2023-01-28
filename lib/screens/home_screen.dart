import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/screens/messenger.dart';
import 'package:flutter_ui_ass2/screens/see_all_popular_restaurant.dart';
import 'package:flutter_ui_ass2/screens/see_all_popular_menus.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../constants/app_color.dart';
import '../constants/app_font.dart';
import '../models/card_promo_model.dart';
import '../models/food_restaurant_model.dart';
import '../models/popular_menu_model.dart';
import 'notification_screen.dart';
import 'select_find_your_food.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final List<Widget> pageView = [
    const HomePageScreen(),
  ];
  PageController pageController = PageController();
  int currentPage = 0;
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              bottom: false,
              left: false,
              right: false,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Get.to(const OrderDetailsScreen());
                                  },
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32),
                                      color:
                                          AppColor.mainColor.withOpacity(0.80),
                                    ),
                                    child: Icon(
                                      Icons.ac_unit_rounded,
                                      size: 18,
                                      color: AppColor.whiteColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 24,
                                ),
                                Text(
                                  'Hello, Daniel !',
                                  style: AppTextStyle.txt26,
                                ),
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(const MessengerScreen());
                                  },
                                  child: Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      // color: AppColor.smokerColor,
                                    ),
                                    child: Icon(
                                      CupertinoIcons.chat_bubble,
                                      color: AppColor.mainColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 36.5,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(const SelectFindYourFoodScreen());
                                    },
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.grey.withOpacity(0.15),
                                      ),
                                      padding: const EdgeInsets.only(
                                          left: 28, right: 12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text('Search'),
                                          Icon(Icons.search),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(const NotificationScreen());
                                  },
                                  child: Container(
                                    width: 44,
                                    height: 44,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color:
                                          AppColor.mainColor.withOpacity(0.20),
                                    ),
                                    child: Icon(
                                      Icons.notifications_active_outlined,
                                      color: AppColor.mainColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          CarouselSlider(
                            items: [
                              ...cardPromoModel.map((e) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  height: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24),
                                    color:
                                        e.colorBackgroud ?? AppColor.mainColor,
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            child: Image.asset(
                                              e.image ?? '',
                                              height: 150,
                                              width: 150,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            e.text ?? '',
                                            style: AppTextStyle.txt23.copyWith(
                                              color: AppColor.whiteColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            e.subTitle ?? '',
                                            style: AppTextStyle.txt23.copyWith(
                                              color: AppColor.whiteColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 37,
                                            width: 120,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(32),
                                              color: e.colorButton ??
                                                  AppColor.mainColor,
                                            ),
                                            child: Text(
                                              e.textButton ?? '',
                                              style:
                                                  AppTextStyle.txt14.copyWith(
                                                color: AppColor.whiteColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ],
                            options: CarouselOptions(
                              height: 180,
                              aspectRatio: 16 / 9,
                              viewportFraction: 1,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 2),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  activeIndex = index;
                                });
                              },
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          AnimatedSmoothIndicator(
                            // onDotClicked: (index) {
                            //   activeIndex = index;
                            // },
                            count: cardPromoModel.length,
                            axisDirection: Axis.horizontal,
                            effect: SlideEffect(
                              spacing: 12.0,
                              radius: 4.0,
                              dotWidth: 24.0,
                              dotHeight: 16.0,
                              paintStyle: PaintingStyle.stroke,
                              strokeWidth: 1.5,
                              dotColor: Colors.grey,
                              activeDotColor: AppColor.mainColor,
                            ),
                            activeIndex: activeIndex,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Popular Restaurant',
                                  style: AppTextStyle.txt20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(
                                        const SeeAllPopularRestaurantScreen());
                                  },
                                  child: Text(
                                    'See all',
                                    style: AppTextStyle.txt16.copyWith(
                                      color: AppColor.mainColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 184,
                    child: ListView.builder(
                      itemCount: foodModel.length,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 24),
                          width: 160,
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
                                foodModel[index].image ??
                                    'assets/icons/chat.png',
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
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Menu',
                          style: AppTextStyle.txt20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(const SeeAllPopularMenuScreen());
                          },
                          child: Text(
                            'See all',
                            style: AppTextStyle.txt16.copyWith(
                              color: AppColor.mainColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: popularMenuModel.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            // Get.to(const EnjoyYourMealShowDataScreen());
                            debugPrint("Hello ${[index]}");
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 24, bottom: 20, right: 24),
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
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
