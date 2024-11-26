import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/item_body_tabbar.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/sliverappbar.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  bool isAppBarExpanded = false;

  void _handleExpandChange(bool isExpanded) {
    setState(() {
      isAppBarExpanded = isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: BackgroundColor.mainColor,
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SlilverAppBarFavorite(onExpandChange: _handleExpandChange),
            SliverToBoxAdapter(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 0),
                width: screenWidth,
                height: screenHeight * (isAppBarExpanded ? 0.55 : 0.75),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: const Color(0xFFF5F5F5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          ButtonsTabBar(
                            backgroundColor: Colors.blueAccent,
                            unselectedBackgroundColor: Colors.white,
                            unselectedLabelStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            labelStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            borderColor: Colors.blueAccent,
                            radius: 10,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 5,
                            ),
                            height: 42,
                            tabs: const [
                              Tab(text: "All"),
                              Tab(text: "Deposit"),
                              Tab(text: "Withdrawal"),
                            ],
                          ),
                          const Spacer(),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[50],
                              foregroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: const Size(60, 35),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                            ),
                            onPressed: () {},
                            label: const Text(
                              "Custom",
                              style: TextStyle(fontSize: 14),
                            ),
                            icon: const Icon(Icons.calendar_month),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: const [
                          ItemBodyTabbar(),
                          ItemBodyTabbar(),
                          ItemBodyTabbar(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
