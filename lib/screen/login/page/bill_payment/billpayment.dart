import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/page/bill_payment/body.dart';

class Billpayment extends StatelessWidget {
  const Billpayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          'Bill Payments',
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 18.sp,
        ),
        toolbarHeight: 5.h,
        centerTitle: true,
        actions: [
          Image.asset("assets/icons/Schedule.gif"),
          SizedBox(
            width: 3.w,
          ),
        ],
      ),
      body: Container(
        width: 100.w,
        height: 100.h,
        color: BackgroundColor.mainColor,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 26.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      25,
                    ),
                    topRight: Radius.circular(
                      25,
                    ),
                  ),
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/wingbankfield.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const BodyBillPayment(),
          ],
        ),
      ),
    );
  }
}
