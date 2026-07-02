import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/fonts.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_style.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      elevation: 0,
      surfaceTintColor: AppColors.black,
      centerTitle: true,
    ),
    dividerColor: Colors.transparent,
    fontFamily: AppFonts.poppins,
    scaffoldBackgroundColor: AppColors.background,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        foregroundColor: AppColors.background,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size(60, 30),
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      // text color
      onSurface: Colors.black,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.accent,
      filled: true,
      hintStyle: TextStyles.caption2,
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
      selectedLabelStyle: TextStyles.caption2.copyWith(
        fontWeight: FontWeight.w600,
        height: 2,
      ),
      unselectedLabelStyle: TextStyles.caption2.copyWith(
        fontWeight: FontWeight.w600,
        height: 2,
      ),
      elevation: 0,
    ),
  );
}
