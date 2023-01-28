import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'foode_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  animatSplashScreen() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Get.to(const FoodeScreen());
      },
    );
  }

  @override
  void initState() {
    animatSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Get.put(SplashScreenController());
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset('assets/images/bg_splash_page.png'),
              Container(
                alignment: Alignment.center,
              )
            ],
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Center(
                  child: CircularProgressIndicator(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
