import 'package:flutter/material.dart';
import 'package:flutter_ui_ass2/auth/screens/splash_screen.dart';
import 'package:flutter_ui_ass2/screens/main_screen.dart';
import 'package:get/get.dart';

import 'constants/app_color.dart';
import 'constants/app_font.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Kantumruy Pro',
        primaryColor: AppColor.mainColor,
        scaffoldBackgroundColor: AppColor.bodyColor,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          titleTextStyle: AppTextStyle.txt26,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
