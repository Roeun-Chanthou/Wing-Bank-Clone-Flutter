import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: must_be_immutable
class BoxBarModal extends StatelessWidget {
  BoxBarModal({
    super.key,
    required this.image,
  });
  String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 42.5.w,
          height: 11.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
            color: Colors.blue,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 1.h,
          left: 2.w,
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 17.sp,
            ),
          ),
        ),
      ],
    );
  }
}
