import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/coin/wing_point.dart';

class SplashCoin extends StatelessWidget {
  const SplashCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 50.w,
      centered: true,
      splash: Image.asset(
        "assets/animations/wingcoin-v3.png",
        fit: BoxFit.cover,
      ),
      nextScreen: const WingPoint(),
      backgroundColor: const Color(0xFFF5F5F5),
      duration: 1000,
    );
  }
}
