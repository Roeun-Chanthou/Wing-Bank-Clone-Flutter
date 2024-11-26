import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/card/body.dart';

class ManageCard extends StatefulWidget {
  const ManageCard({super.key});

  @override
  State<ManageCard> createState() => _ManageCardState();
}

class _ManageCardState extends State<ManageCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        toolbarHeight: 5.h,
        backgroundColor: BackgroundColor.mainColor,
        title: Text(
          "Manage Cards",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: const BuildBodyCard(),
    );
  }
}
