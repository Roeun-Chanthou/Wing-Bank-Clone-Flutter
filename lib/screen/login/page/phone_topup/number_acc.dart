import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/logout/views/screens/home/body/custom_bottom_sheet.dart';

class NumberAcc extends StatelessWidget {
  const NumberAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 12.h,
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Account"),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 100.w,
            height: 5.h,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.15),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(left: 3.w),
            child: Row(
              children: [
                Text("101118731"),
                Spacer(),
                IconButton(
                  onPressed: () => showCustomBottomSheet(context),
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    size: 20.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
