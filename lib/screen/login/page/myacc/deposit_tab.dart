import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DepositTab extends StatelessWidget {
  const DepositTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton.filled(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                Colors.white,
              ),
            ),
            onPressed: () {},
            icon: Icon(
              Icons.dns_rounded,
              color: Colors.grey,
              size: 80,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "You do not have Term Deposit",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Earn a high income up to 5.5% p.a. as interest",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            "from your deposit amount",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue.shade600,
              side: BorderSide(
                color: Colors.blue.shade600,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 1.h,
                horizontal: 4.w,
              ),
            ),
            onPressed: () {},
            child: Text(
              "Open Term Deposit Now",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
