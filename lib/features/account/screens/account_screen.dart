import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/images_app.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/account/widgets/header.dart';
import 'package:green_mart/features/account/widgets/menu_item.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: ProfileHeader(),
            ),

            const Divider(height: 1, thickness: 1, color: AppColors.grey),

            // 2. قائمة الخيارات
            Expanded(
              child: ListView(
                children: [
                  MenuItem(name: AppImages.bell, title: "Orders"),
                  MenuItem(name: AppImages.bell, title: "My Details"),
                  MenuItem(name: AppImages.help, title: "Delivery Address"),
                  MenuItem(name: AppImages.filter, title: "Payment Methods"),
                  MenuItem(name: AppImages.details, title: "Promo Cord"),
                  MenuItem(name: AppImages.bell, title: "Notifications"),
                  MenuItem(name: AppImages.help, title: "Help"),
                  MenuItem(name: AppImages.about, title: "About"),
                ],
              ),
            ),

            // 3. زر تسجيل الخروج
            // LogOutButton(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: MainButton(
                text: 'Log Out',
                onPressed: () {},
                backgroundColor: AppColors.accent,
                textColor: AppColors.primary,
                leadingIcon: Image.asset(AppImages.logOut, height: 24),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
