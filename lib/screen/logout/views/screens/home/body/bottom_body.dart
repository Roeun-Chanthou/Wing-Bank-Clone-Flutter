import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/screen/login/home/body/promotion_item.dart';
import 'package:wing_bank/screen/logout/views/pages/promotion.dart';
import 'package:wing_bank/screen/logout/views/screens/home/body/custom_bottom_sheet.dart';
import 'package:wing_bank/screen/logout/widgets/card_bottom.dart';

class BottomBody extends StatelessWidget {
  const BottomBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Expanded(
      flex: 1,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: screenWidth,
              margin: EdgeInsets.only(
                bottom: 1.h,
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                ),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => showCustomBottomSheet(context),
                      child: const CardParnter(
                        imageCard: "assets/socialmedia/partner.png",
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    const CardParnter(
                      imageCard: "assets/socialmedia/wingpoint.png",
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    const CardParnter(
                      imageCard: "assets/socialmedia/checkprize.png",
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    const CardParnter(
                      imageCard: "assets/socialmedia/checkTicket.png",
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    const CardParnter(
                      imageCard: "assets/socialmedia/smile.png",
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    const CardParnter(
                      imageCard: "assets/socialmedia/report.png",
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    const CardParnter(
                      imageCard: "assets/socialmedia/loanpartner.png",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 3.w),
                    Text(
                      "Promotions",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 1.h,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PromotionScreen(),
                            ),
                          );
                        },
                        child: const Row(
                          children: [
                            Text(
                              "Show All",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const PromotionItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
