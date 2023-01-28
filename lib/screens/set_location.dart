import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/screens/payment_method.dart';
import 'package:get/get.dart';
import '../../constants/app_color.dart';
import '../../constants/app_font.dart';
import '../components/custom_button.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/map_full.png'),
              ],
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
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
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  height: 223,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColor.greyColor.withOpacity(0.30),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(24),
                        height: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.whiteColor.withOpacity(0.4),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 24),
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: AppColor.mainColor.withOpacity(
                                  0.10,
                                ),
                              ),
                              child: Icon(
                                (Icons.location_on_outlined),
                                size: 20,
                                color: AppColor.mainColor,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('office'),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Bung Tomo St. 109',
                                  style: AppTextStyle.txt18,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9.82),
                                color: AppColor.mainColor.withOpacity(0.30),
                              ),
                              child: Icon(
                                Icons.edit,
                                color: AppColor.mainColor,
                                size: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                          ],
                        ),
                      ),
                      // const Spacer(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24),
                        child: CustomButtonText(
                          text: 'Set Location',
                          onTap: () {
                            Get.to(const PaymentMethodScreen());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
