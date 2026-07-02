import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class BaseItem extends StatelessWidget {
  const BaseItem({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 248,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: model.color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.accent),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff555E58).withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: Center(child: Image.asset(model.image))),
            SizedBox(width: 10),
            Text(
              model.name,
              style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
