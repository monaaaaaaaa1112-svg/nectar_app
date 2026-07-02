import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class ItemExplore extends StatelessWidget {
  const ItemExplore({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (model.onTap != null) {
          model.onTap!(context); // تمرير الـ context هنا عند الضغط
        }
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: model.color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff555E58).withAlpha(7),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Center(child: Image.asset(model.image))),
              SizedBox(height: 10),
              Text(
                model.name,
                style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
