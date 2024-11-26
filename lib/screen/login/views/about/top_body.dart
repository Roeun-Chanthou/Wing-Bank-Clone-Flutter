import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopBody extends StatelessWidget {
  const TopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 16.h,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                image: AssetImage("assets/images/wingbankfield.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.w, right: 2.w, bottom: 2.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/socialmedia/wingbank.png",
                  width: 30.w,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "The Wing Bank App is a comprehensive application provided by Wing Bank that enables users to manage their finances in one place. It allows users to scan and\npay using any bank's KHQR code, transfer money\nlocally and internationally, top-up mobile balances,\npay bills, and, most importantly, earn endless Wingpoints. Powered by Cambodia's leading banking services, the Wing Bank app ensures not just faster and easier transactions, but also the utmost security for all Wingank users, giving you peace of mind with everytransation!",
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
