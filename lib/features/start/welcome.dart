import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/core/constants/images_app.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/auth/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            // image
            Image.asset(
              AppImages.welcome,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            // content
            Positioned(
              bottom: 70,
              right: 20,
              left: 20,
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppImages.carrotSvg,
                    colorFilter: ColorFilter.mode(
                      AppColors.background,
                      BlendMode.srcIn,
                    ),
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(height: 25),
                  Text(
                    'Welcome\nto our store',
                    textAlign: TextAlign.center,
                    style: TextStyles.headline.copyWith(
                      color: AppColors.background,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Ger your groceries in as fast as one hour',
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.background,
                    ),
                  ),
                  SizedBox(height: 20),
                  MainButton(
                    text: 'Get Started',
                    onPressed: () {
                      pushReplacement(context, LoginScreen());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
