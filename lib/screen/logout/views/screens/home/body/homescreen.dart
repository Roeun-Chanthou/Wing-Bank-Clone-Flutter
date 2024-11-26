import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/models/data/card.dart';
import 'package:wing_bank/screen/logout/views/screens/home/body/bottom_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> images = [
    "assets/socialmedia/checkprize.png",
    "assets/socialmedia/wingpoint.png",
    "assets/socialmedia/partner.png",
    "assets/socialmedia/checkTicket.png",
    "assets/socialmedia/smile.png",
    "assets/socialmedia/report.png",
    "assets/socialmedia/loanpartner.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: BackgroundColor.mainColor,
      onDrawerChanged: (isOpened) {
        setState(
          () {},
        );
      },
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Color(0xFFF5F5F5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                width: 100.w,
                margin: EdgeInsets.only(bottom: 2.5.h),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 5.w,
                    right: 5.w,
                  ),
                  child: const CardButton(),
                ),
              ),
            ),
            const BottomBody(),
          ],
        ),
      ),
    );
  }
}
