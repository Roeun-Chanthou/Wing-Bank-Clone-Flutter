import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/login/page/phone_topup/card_phone.dart';
import 'package:wing_bank/screen/login/page/phone_topup/number_acc.dart';
import 'package:wing_bank/screen/login/page/phone_topup/phone_number.dart';

class Topup extends StatelessWidget {
  const Topup({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: BackgroundColor.mainColor,
        appBar: AppBar(
          backgroundColor: BackgroundColor.mainColor,
          title: const Text(
            'Phone Top Up',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Container(
          width: 100.w,
          height: 100.h,
          padding: EdgeInsets.all(4.w),
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 100.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ButtonsTabBar(
                  backgroundColor: BackgroundColor.mainColor,
                  unselectedBackgroundColor: Colors.white,
                  unselectedLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                  radius: 10,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 22,
                    vertical: 5,
                  ),
                  buttonMargin:
                      EdgeInsets.symmetric(vertical: 1.w, horizontal: 1.w),
                  contentCenter: true,
                  height: 45,
                  tabs: [
                    Tab(
                      text: "Phone Number",
                      icon: Icon(Icons.phone_iphone_outlined),
                    ),
                    Tab(
                      text: "Buy a Voucher",
                      icon: Icon(Icons.calendar_view_day_sharp),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.5.h),
              Expanded(
                child: (TabBarView(
                  children: [
                    Column(
                      children: [
                        NumberAcc(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("TOP UP TO"),
                        ),
                        PhoneNumber(),
                      ],
                    ),
                    Column(
                      children: [
                        NumberAcc(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("TOP UP TO"),
                        ),
                        CardPhone(),
                      ],
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
