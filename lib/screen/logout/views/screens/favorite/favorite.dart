import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/myaccount.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BackgroundColor.mainColor,
        toolbarHeight: 5.h,
        title: Text(
          "Favorites",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: BackgroundColor.mainColor,
      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              30,
            ),
            topRight: Radius.circular(
              30,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              MdiIcons.contentSaveAllOutline,
              color: Colors.grey[600],
              size: 40.sp,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "No Favorite",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Once you have favorite, they will be",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.sp,
              ),
            ),
            Text(
              "displayed here.",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyAccount(),
            ),
          );
        },
        backgroundColor: Colors.blue.shade600,
        shape: const CircleBorder(),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 25.sp,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}