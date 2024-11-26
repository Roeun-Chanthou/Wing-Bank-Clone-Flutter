import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/components/widgets/button_other.dart';
import 'package:wing_bank/components/widgets/buttonpayment.dart';
import 'package:wing_bank/components/widgets/buttonpaymentcolumn.dart';
import 'package:wing_bank/screen/login/page/donation_charity.dart';
import 'package:wing_bank/screen/login/page/finance.dart';
import 'package:wing_bank/screen/login/page/insurance.dart';
import 'package:wing_bank/screen/login/page/internet_tv.dart';
import 'package:wing_bank/screen/login/page/other.dart';
import 'package:wing_bank/screen/login/page/postpaid.dart';
import 'package:wing_bank/screen/login/page/school.dart';
import 'package:wing_bank/screen/login/page/sme_business_payment.dart';
import 'package:wing_bank/screen/login/page/utilities.dart';

class BodyCard extends StatelessWidget {
  const BodyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(bottom: 2.h),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Utilities(),
                      ),
                    );
                  },
                  child: const Buttonpayment(
                    icon: "assets/icons/account.png",
                    text: "Utilities",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Finance(),
                      ),
                    );
                  },
                  child: const Buttonpayment(
                    icon: "assets/icons/payment.png",
                    text: "Finance",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Insurance(),
                      ),
                    );
                  },
                  child: const Buttonpayment(
                    icon: "assets/icons/localtransfer.png",
                    text: "Insurance",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InternetTv(),
                      ),
                    );
                  },
                  child: const Buttonpaymentcolumn(
                    icon: "assets/icons/TopUp.png",
                    title: "Internet",
                    // subtitle: "and TV",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const School(),
                      ),
                    );
                  },
                  child: const Buttonpayment(
                    icon: "assets/icons/loan.png",
                    text: "School",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SmeBusinessPayment(),
                      ),
                    );
                  },
                  child: const Buttonpaymentcolumn(
                    icon: "assets/icons/TopUp.png",
                    title: "SME business\nPayment",
                    // subtitle: "",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DonationCharity(),
                      ),
                    );
                  },
                  child: const Buttonpaymentcolumn(
                    icon: "assets/icons/TopUp.png",
                    title: "Donation",
                    // subtitle: "& Charity",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Postpaid(),
                      ),
                    );
                  },
                  child: const Buttonpayment(
                    icon: "assets/icons/WingMall.png",
                    text: "Postpaid",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Other(),
                  ),
                );
              },
              child: const ButtonOther(
                icon: Icons.more_horiz_outlined,
                text: "Others",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
