import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/custom_text_form_field.dart';
import '../constants/app_color.dart';
import '../constants/app_font.dart';
import '../models/chat_model.dart';
import 'chat_private.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      drawer: const Drawer(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const CustomTextFormField(
              hintText: 'Search',
              keyInputType: TextInputType.text,
              suffixIcon: Icon(Icons.search),
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  itemCount: chatModel.length,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(const ChatPrivateScreen());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 13,
                          right: 32,
                        ),
                        margin: const EdgeInsets.only(bottom: 32),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColor.whiteColor.withOpacity(0.70),
                        ),
                        height: 88,
                        child: Row(
                          children: [
                            Image.asset(
                              chatModel[index].leading ?? '',
                              height: 62,
                              width: 62,
                            ),
                            const SizedBox(
                              width: 21,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  chatModel[index].text ?? '',
                                  style: AppTextStyle.txt16,
                                ),
                                const Spacer(),
                                Text(
                                  chatModel[index].subTitle ?? '',
                                  style: AppTextStyle.txt14.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  height: 17,
                                ),
                                Image.asset(
                                  chatModel[index].trailing ?? '',
                                  width: 25,
                                  height: 25,
                                ),
                                const Spacer(),
                                Text(chatModel[index].subTrailing ?? ''),
                                const SizedBox(
                                  height: 12,
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
    );
  }
}
