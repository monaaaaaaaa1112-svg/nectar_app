import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/images_app.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/features/account/screens/account_screen.dart';
import 'package:green_mart/features/cart/cart_screen.dart';
import 'package:green_mart/features/explore/screens/explore_screen.dart';
import 'package:green_mart/features/favoruite/screens/favoruit_screen.dart';
import 'package:green_mart/features/home/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int current = 0;
  List<Widget> screens = [
    HomeScreen(),
    CartScreen(),
    ExploreScreen(),
    FavoruitScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navBar(),
      body: Center(child: screens[current]),
    );
  }

  Container navBar() {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: AppColors.background,
        boxShadow: [
          BoxShadow(
            color: Color(0xff555E58).withValues(alpha: .1),
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: current,
        onTap: (value) {
          setState(() {
            current = value;
          });
        },
        iconSize: 50,
        items: [
          bottomItems(AppImages.storeSvg, 'Store'),
          bottomItems(AppImages.carSvg, 'Cart'),
          bottomItems(AppImages.exploreSvg, 'Explore'),
          bottomItems(AppImages.heartSvg, 'Favorit'),
          bottomItems(AppImages.userSvg, 'Account'),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomItems(String path, String label) {
    return BottomNavigationBarItem(
      icon: CustomSvgPicture(path: path),
      activeIcon: CustomSvgPicture(path: path, color: AppColors.primary),
      label: label,
    );
  }
}
