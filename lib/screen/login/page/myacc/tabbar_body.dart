import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/page/myacc/all_tab.dart';
import 'package:wing_bank/screen/login/page/myacc/current_tab.dart';
import 'package:wing_bank/screen/login/page/myacc/deposit_tab.dart';
import 'package:wing_bank/screen/login/page/myacc/gold_tab.dart';

class TabbarBody extends StatefulWidget {
  const TabbarBody({super.key});

  @override
  State<TabbarBody> createState() => _TabbarBodyState();
}

class _TabbarBodyState extends State<TabbarBody> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Expanded(
        child: Container(
          width: 100.w,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.w),
                child: ButtonsTabBar(
                  physics: AlwaysScrollableScrollPhysics(),
                  backgroundColor: Colors.blue,
                  unselectedBackgroundColor: Colors.white,
                  unselectedLabelStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  radius: 10,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 5,
                  ),
                  contentCenter: true,
                  buttonMargin: EdgeInsets.symmetric(horizontal: 15),
                  height: 35,
                  tabs: [
                    Tab(
                      text: ("All"),
                    ),
                    Tab(
                      text: ("Goal"),
                    ),
                    Tab(
                      text: ("Term Deposit"),
                    ),
                    Tab(
                      text: ("Current"),
                    ),
                    Tab(
                      text: ("Saving"),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    AllTab(),
                    GoldTab(),
                    DepositTab(),
                    CurrentTab(),
                    AllTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}