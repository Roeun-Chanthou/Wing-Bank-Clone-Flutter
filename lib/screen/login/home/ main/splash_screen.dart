import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/controller/controll_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 11.h,
      centered: true,
      splash: Image.asset(
        "assets/logo/WingBank.png",
        fit: BoxFit.cover,
      ),
      nextScreen: const MainScreen(),
      backgroundColor: BackgroundColor.mainColor,
      duration: 3000,
    );
  }
}
