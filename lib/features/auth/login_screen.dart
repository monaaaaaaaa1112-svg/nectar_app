import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/images_app.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/functions/validations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/core/widgets/password_text_form_field.dart';
import 'package:green_mart/features/auth/signup_screen.dart';
import 'package:green_mart/main/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkay = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Form(
              key: formkay,
              autovalidateMode: AutovalidateMode.onUnfocus,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Center(child: SvgPicture.asset(AppImages.carrotSvg)),

                  const SizedBox(height: 24),

                  const Text('Login', style: TextStyles.title2),
                  const SizedBox(height: 6),
                  const Text(
                    'Enter your email and password',
                    style: TextStyle(color: AppColors.accent),
                  ),

                  const SizedBox(height: 24),

                  const Text('Email'),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    hint: 'Enter@gmail.com',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      } else if (!isEmailValid(value)) {
                        return 'Please enter valid email';
                      }
                      return null;
                    },
                    keybordType: TextInputType.emailAddress,
                  ),

                  const SizedBox(height: 16),

                  const Text('Password'),
                  const SizedBox(height: 8),
                  PasswordTextFormField(hint: '**********'),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyles.caption1.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  MainButton(
                    text: 'login',
                    onPressed: () {
                      if (formkay.currentState!.validate()) {
                        pushReplacement(context, MainScreen());
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? "),
                      TextButton(
                        onPressed: () {
                          pushReplacement(context, SignUp());
                        },
                        child: Text(
                          'Signup',
                          style: TextStyle(color: AppColors.primary),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
