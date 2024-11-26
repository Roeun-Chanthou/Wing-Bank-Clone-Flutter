import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/pages/all_promotion.dart';

class PromotionScreen extends StatefulWidget {
  const PromotionScreen({super.key});

  @override
  State<PromotionScreen> createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 11,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: BackgroundColor.mainColor,
      appBar: AppBar(
        toolbarHeight: 45,
        title: const Text(
          'All',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        backgroundColor: BackgroundColor.mainColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: const EdgeInsets.only(
          top: 20,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              25,
            ),
            topRight: Radius.circular(
              25,
            ),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.04,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 25,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: ButtonsTabBar(
                controller: _tabController,
                backgroundColor: Colors.blueAccent,
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: const TextStyle(
                  color: Colors.black,
                ),
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
                borderWidth: 0,
                borderColor: Colors.blueAccent,
                radius: 10,
                height: 40,
                buttonMargin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 4,
                ),
                contentCenter: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                tabs: const [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Wingmall Offers",
                  ),
                  Tab(
                    text: "Money Transfer",
                  ),
                  Tab(
                    text: "Entertainment",
                  ),
                  Tab(
                    text: "Wingpoints",
                  ),
                  Tab(
                    text: "Food & Beverage",
                  ),
                  Tab(
                    text: "Card",
                  ),
                  Tab(
                    text: "Loans",
                  ),
                  Tab(
                    text: "Wing KHQR",
                  ),
                  Tab(
                    text: "Savings",
                  ),
                  Tab(
                    text: "Travel & Accommodation",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  AllPromotion(),
                  AllPromotion(),
                  AllPromotion(),
                  AllPromotion(),
                  AllPromotion(),
                  AllPromotion(),
                  AllPromotion(),
                  AllPromotion(),
                  AllPromotion(),
                  AllPromotion(),
                  AllPromotion(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
