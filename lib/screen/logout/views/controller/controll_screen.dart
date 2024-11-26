import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wing_bank/constants/theme.dart';
import 'package:wing_bank/screen/logout/components/button_navigationbar.dart';
import 'package:wing_bank/screen/logout/views/screens/card/managecard.dart';
import 'package:wing_bank/screen/logout/views/screens/chat/wing_chat.dart';
import 'package:wing_bank/screen/logout/views/screens/favorite/favorite.dart';
import 'package:wing_bank/screen/logout/views/screens/home/body/homescreen.dart';
import 'package:wing_bank/screen/logout/widgets/appbar.dart';
import 'package:wing_bank/screen/logout/widgets/drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _screenList = [
    const HomeScreen(),
    const Favorite(),
    const SizedBox(),
    const Chat(),
    const ManageCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0 ? const AppBarHomeScreen() : null,
      drawer: const Drawer(
        child: BuildDrawer(),
      ),
      backgroundColor: BackgroundColor.mainColor,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _screenList,
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: BackgroundColor.mainColor,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(fontSize: 14.sp),
          selectedLabelStyle: TextStyle(fontSize: 14.sp),
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(
              () {
                if (index == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Chat(),
                    ),
                  );
                } else {
                  _currentIndex = index;
                  _pageController.jumpToPage(index);
                }
              },
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CommunityMaterialIcons.home,
                size: 20.sp,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_rounded,
                size: 20.sp,
              ),
              label: 'Favorites',
            ),
            const BottomNavigationBarItem(
              icon: SizedBox(),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CommunityMaterialIcons.chat_processing_outline,
                size: 20.sp,
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CommunityMaterialIcons.card_bulleted,
                size: 20.sp,
              ),
              label: 'Cards',
            ),
          ],
        ),
        const CenterButtonQR(),
      ],
    );
  }
}
