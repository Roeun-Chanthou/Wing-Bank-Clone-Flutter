import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/bottom_detail.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/detail_acc.dart';

class SlilverAppBarFavorite extends StatefulWidget {
  final ValueChanged<bool> onExpandChange;

  const SlilverAppBarFavorite({
    required this.onExpandChange,
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SlilverAppBarFavoriteState createState() => _SlilverAppBarFavoriteState();
}

class _SlilverAppBarFavoriteState extends State<SlilverAppBarFavorite> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SliverAppBar(
      toolbarHeight: screenHeight * 0.045,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      centerTitle: true,
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            size: 25.sp,
          ),
        ),
      ],
      backgroundColor: BackgroundColor.mainColor,
      expandedHeight: screenHeight * (isExpanded ? 0.4 : 0.21),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          color: BackgroundColor.mainColor,
          child: Stack(
            children: [
              Positioned(
                top: screenHeight * 0.12,
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Available Balance",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      const Text(
                        "៛0",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Account Balance: ៛០",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                          widget.onExpandChange(isExpanded);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black.withOpacity(0.2),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size(
                            30,
                            screenHeight * 0.035,
                          ),
                        ),
                        child: Icon(
                          isExpanded
                              ? Icons.keyboard_double_arrow_up
                              : Icons.keyboard_double_arrow_down,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      if (isExpanded) ...[
                        DetailAcc(
                          leftText: "Account Number",
                          rightText: "101118731",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        DetailAcc(
                          leftText: "Account Type",
                          rightText: "Savings Account",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        DetailAcc(
                          leftText: "Open Date",
                          rightText: "13 Oct 2024",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        BottomDetail(),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      title: const Text(
        "My Account",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
