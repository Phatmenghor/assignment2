import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/components/custom_row_appbar.dart';
import 'package:flutter_ui_ass2/screens/main_screen.dart';
import 'package:get/get.dart';
import '../../constants/app_color.dart';
import '../components/custom_total_card.dart';
import '../constants/app_font.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: const CustomRowAppBar(
                text: 'Payment method',
              ),
            ),
            const SizedBox(
              height: 36.50,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.whiteColor.withOpacity(0.6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 86,
                          height: 23,
                          child: Image.asset('assets/icons/pay_pal.png'),
                        ),
                        Text(
                          '+6282******39',
                          style: AppTextStyle.txt16,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.whiteColor.withOpacity(0.6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset('assets/icons/visa.png'),
                        ),
                        Text(
                          '3821 **** **** **58',
                          style: AppTextStyle.txt16,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.whiteColor.withOpacity(0.6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 83,
                          height: 32,
                          child: Image.asset('assets/icons/pa_oneer.png'),
                        ),
                        Text(
                          '4627 **** **** **65',
                          style: AppTextStyle.txt16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomCardTotalMoney(
              onTaped: () {
                Get.offAll(const MainScreen());
              },
              text: 'Order Now',
            ),
          ],
        ),
      ),
    );
  }
}
