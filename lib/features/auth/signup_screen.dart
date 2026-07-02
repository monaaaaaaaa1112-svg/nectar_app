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
import 'package:green_mart/features/auth/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKay = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKay,
            autovalidateMode: AutovalidateMode.onUnfocus,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentGeometry.center,
                  child: SvgPicture.asset(AppImages.carrotSvg),
                ),
                SizedBox(height: 40),
                Text('Sign Up', style: TextStyles.title),
                SizedBox(height: 14),
                Text(
                  'Enter your credentials to continue',
                  style: TextStyles.caption2,
                ),
                SizedBox(height: 36),
                Text(
                  'Name',
                  style: TextStyles.subtitle.copyWith(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 7),
                CustomTextFormField(hint: 'Enter your name'),
                SizedBox(height: 26),
                Text(
                  'Email',
                  style: TextStyles.subtitle.copyWith(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 7),
                CustomTextFormField(
                  hint: 'Enter@gmail.com',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';

                      /// xxxx@exaple.xxx
                    } else if (!isEmailValid(value)) {
                      return 'Please enter valid email';
                    }
                    return null;
                  },
                  keybordType: TextInputType.emailAddress,
                ),
                SizedBox(height: 26),
                Text(
                  'Password',
                  style: TextStyles.subtitle.copyWith(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 7),
                PasswordTextFormField(hint: '**********'),
                SizedBox(height: 20),

                MainButton(text: 'Sign Up', onPressed: () {}),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyles.caption1,
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: TextButton(
                              onPressed: () {
                                pushReplacement(context, LoginScreen());
                              },
                              child: Text(
                                'Login',
                                style: TextStyles.caption1.copyWith(
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
