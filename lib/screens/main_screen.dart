import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/screens/delivery_coming_soon.dart';
import 'package:flutter_ui_ass2/screens/home_screen.dart';
import 'package:flutter_ui_ass2/screens/messenger.dart';
import 'package:flutter_ui_ass2/screens/profile_screen.dart';

import '../constants/app_color.dart';
import 'order_detail.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var selected = 0;
  var listScreen = [
    // const HomePageScreen(),
    const HomePageScreen(),
    const OrderDetailsScreen(),
    const DeliveryComingSoonScreen(),
    const MessengerScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreen.elementAt(selected),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.whiteColor,
        elevation: 1,
        iconSize: 25,
        unselectedItemColor: AppColor.titleTextColor,
        fixedColor: AppColor.titleTextColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppColor.titleTextColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card_outlined,
              color: AppColor.titleTextColor,
            ),
            label: "Card",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.delivery_dining_outlined,
              color: AppColor.titleTextColor,
            ),
            label: "Delivery",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble,
              color: AppColor.titleTextColor,
            ),
            label: "Messenger",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: AppColor.titleTextColor,
            ),
            label: "Prifile",
          ),
        ],
      ),
    );
  }
}
