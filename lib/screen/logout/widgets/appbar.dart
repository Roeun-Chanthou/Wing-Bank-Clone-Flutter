import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/coin/splash_coin.dart';
import 'package:wing_bank/screen/logout/views/screens/home/appbar/notificatons/notificaton.dart';
import 'package:wing_bank/screen/logout/views/screens/home/body/custom_bottom_sheet.dart';

class AppBarHomeScreen extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 55,
      backgroundColor: BackgroundColor.mainColor,
      leading: GestureDetector(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: SizedBox(
          height: 1.w,
          width: 2.w,
          child: Image.asset(
            "assets/animations/menu.jpg",
            fit: BoxFit.contain,
          ),
        ),
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/logo/WingBank.png",
            width: 35.w,
            fit: BoxFit.cover,
          ),
        ],
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SplashCoin(),
              ),
            );
          },
          child: SizedBox(
            width: 8.w,
            child: Image.asset(
              'assets/animations/wingcoin-v3.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(width: 5.5.w),
        GestureDetector(
          onTap: () => showCustomBottomSheet(context),
          child: Container(
            width: 7.5.w,
            height: 7.5.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image: const DecorationImage(
                image: AssetImage(
                  "assets/images/qr.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(width: 2.w),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyNotification(),
              ),
            );
          },
          icon: Icon(
            Icons.notifications,
            size: 24.sp,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 1.w),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(7.h);
}
