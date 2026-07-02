import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/images_app.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/main/main_screen.dart';

class AcceptedScreen extends StatelessWidget {
  const AcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ), // بياخد مساحة مرنة من فوق عشان يوسطن التصميم

              SvgPicture.asset(AppImages.doneSvg),
              const SizedBox(height: 40),

              Text(
                'Your Order has been accepted',
                textAlign: TextAlign.center,
                style: TextStyles.title2.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),

              Text(
                'Your items has been placed and is on it’s\nway to being processed',
                textAlign: TextAlign.center,
                style: TextStyles.subtitle.copyWith(
                  color: Colors.grey.shade600,
                  height: 1.5,
                ),
              ),

              const Spacer(
                flex: 3,
              ), // بيزق الأزرار لتحت بشكل متناسق مع الشاشات المختلفة
              MainButton(onPressed: () {}, text: 'Track Order'),
              const SizedBox(height: 12),

              MainButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainScreen()),
                  );
                },
                text: 'Back to home',
                backgroundColor: AppColors.background,
                textColor: AppColors.primary,
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
