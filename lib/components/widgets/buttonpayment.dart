import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Buttonpayment extends StatelessWidget {
  const Buttonpayment({
    super.key,
    required this.icon,
    required this.text,
  });
  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(4.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              icon,
            ),
            height: 5.h,
          ),
          SizedBox(
            width: 2.w,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          )
        ],
      ),
    );
  }
}
