import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/pages/profile.dart';
import 'package:wing_bank/screen/logout/widgets/itemdrawer.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: BackgroundColor.mainColor,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          children: [
            Expanded(
              // flex: 1,
              child: Container(
                color: BackgroundColor.mainColor,
                child: Center(
                  child: Image.asset(
                    "assets/logo/WingBank.png",
                    width: 12.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.blue.shade600,
              width: double.infinity,
              height: 12.h,
              padding: EdgeInsets.only(
                left: 5.w,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CHANTHOU ROEUN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Saving Account #101118731",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "View Profile",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 1.w),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15.sp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 1.w,
                        top: 1.h,
                        bottom: 2.h,
                      ),
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: const Itemdrawer(),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, bottom: 5.h),
                      child: Text(
                        "Version 4.12.10",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}