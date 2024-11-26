import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/components/widgets/card_bottom.dart';
import 'package:wing_bank/components/widgets/card_new_account.dart';

class SliverListItem extends StatelessWidget {
  const SliverListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(4.w),
      child: Column(
        children: [
          CardNewAccount(
            icon: Icons.savings,
            title: "Save For Goal",
            datail:
                "Save for anything you want and earn interest rate up to 5.00% p.a. plus a special offer for your goal",
          ),
          SizedBox(
            height: 1.h,
          ),
          CardNewAccount(
            icon: Icons.savings,
            title: "Term Depost",
            datail:
                "Save for anything you want and earn interest rate up to 5.00% p.a. plus a",
          ),
          SizedBox(
            height: 1.h,
          ),
          CardNewAccount(
            icon: Icons.savings,
            title: "Save For Goal",
            datail:
                "Save for anything you want and earn interest rate up to 5.00% p.a. plus a",
          ),
          SizedBox(
            height: 1.h,
          ),
          CardNewAccount(
            icon: Icons.savings,
            title: "Save For Goal",
            datail:
                "Save for anything you want and earn interest rate up to 5.00% p.a. plus a",
          ),
          SizedBox(
            height: 1.h,
          ),
          CardBottom(),
        ],
      ),
    );
  }
}
