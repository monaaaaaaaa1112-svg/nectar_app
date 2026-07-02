import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/colors.dart';

class IconButtonApp extends StatelessWidget {
  final IconData icon;
  final Color? color;
  const IconButtonApp({super.key, required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, size: 25, color: color),
    );
  }
}
