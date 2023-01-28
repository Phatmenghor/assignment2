import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:flutter_ui_ass2/constants/app_font.dart';
import 'package:flutter_ui_ass2/screens/order_detail_add_to_card.dart';
import 'package:get/get.dart';
import '../../constants/app_color.dart';
import '../../models/popular_menu_model.dart';
import '../components/custom_search_menu.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.mainColor,
        onPressed: () {
          Get.to(const PaymentOrderDetailsScreen());
        },
        child: const Icon(Icons.adb_sharp),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SafeArea(
          bottom: false,
          left: false,
          right: false,
          child: Column(
            children: [
              const CustomRowAppBar(
                text: 'Order Details',
              ),
              const SizedBox(
                height: 36.5,
              ),
              const CustomSearchMenu(),
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
                      return Slidable(
                        key: ValueKey(index),
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              onPressed: (context) {},
                              backgroundColor: AppColor.mainColor,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              autoClose: true,
                              label: 'delete',
                            ),
                          ],
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          alignment: Alignment.center,
                          height: 88,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.grey.withOpacity(0.20),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 75,
                                height: 75,
                                child: Image.asset(
                                  "${popularMenuModel[index].leading}",
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${popularMenuModel[index].text}',
                                    style: AppTextStyle.txt18,
                                  ),
                                  Text(
                                    '${popularMenuModel[index].subTitle}',
                                    style: AppTextStyle.txt14.copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    '${popularMenuModel[index].trailing}',
                                    style: AppTextStyle.txt18.copyWith(
                                      color: AppColor.mainColor,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Container(
                                    width: 28,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          AppColor.mainColor.withOpacity(0.20),
                                    ),
                                    child: const Icon(Icons.remove),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      '0',
                                      style: AppTextStyle.txt18,
                                    ),
                                  ),
                                  Container(
                                    width: 28,
                                    height: 28,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          AppColor.mainColor.withOpacity(0.20),
                                    ),
                                    child: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
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
