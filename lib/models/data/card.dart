import 'package:flutter/material.dart';
import 'package:wing_bank/models/data/buildcard.dart';
import 'package:wing_bank/screen/login/page/bill_payment/billpayment.dart';
import 'package:wing_bank/screen/login/page/code_to_wing/code_to_wing.dart';
import 'package:wing_bank/screen/login/page/free_cash_out/free_cash.dart';
import 'package:wing_bank/screen/login/page/loan/loan.dart';
import 'package:wing_bank/screen/login/page/local_transfer/local_transfer.dart';
import 'package:wing_bank/screen/login/page/myacc/myaccount.dart';
import 'package:wing_bank/screen/login/page/new_acc/newaccount.dart';
import 'package:wing_bank/screen/login/page/phone_topup/topup.dart';

class CardButton extends StatelessWidget {
  const CardButton({super.key});

  Widget buildCardButton(
    BuildContext context,
    String icon,
    String title,
    Widget page,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: BuildCard(
        icon: icon,
        title: title,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildCardButton(
              context,
              "assets/icons/myaccount.png",
              "My Account",
              Myaccount(),
            ),
            buildCardButton(
              context,
              "assets/icons/localtransfer.png",
              "Local Transfer",
              const LocalTransfer(),
            ),
            buildCardButton(
              context,
              "assets/icons/worldTransfer.png",
              "World Transfer",
              const Loan(),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildCardButton(
              context,
              "assets/icons/payment.png",
              "Bill Payment",
              const Billpayment(),
            ),
            buildCardButton(
              context,
              "assets/icons/TopUp.png",
              "Phone Top Up",
              const Topup(),
            ),
            buildCardButton(
              context,
              "assets/icons/code_to_wing.png",
              "Code To Wing",
              const CodeToWing(),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildCardButton(
              context,
              "assets/icons/newaccount.png",
              "New Account",
              const Newaccount(),
            ),
            buildCardButton(
              context,
              "assets/icons/loan.png",
              "Loan",
              const Loan(),
            ),
            buildCardButton(
              context,
              "assets/icons/freecashout.png",
              "Free Cash Out",
              const FreeCashOut(),
            ),
          ],
        ),
      ],
    );
  }
}
