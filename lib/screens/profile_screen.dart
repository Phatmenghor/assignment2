import 'package:flutter/material.dart';
import '../../models/popular_menu_model.dart';
import '../constants/app_color.dart';
import '../constants/app_font.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: false,
              pinned: true,
              expandedHeight: height * 0.37,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 25,
                  width: 125,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    "Member Gold",
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Member Gold',
                          style: AppTextStyle.txt23,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'daniel.sebastian@yourdomain.com',
                          style: AppTextStyle.txt16.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        color: AppColor.mainColor.withOpacity(0.20),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: AppColor.mainColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Favorite'),
                    Text('See all'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: popularMenuModel.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
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
      ),
    );
  }
}
