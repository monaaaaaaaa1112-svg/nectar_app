import 'package:flutter/material.dart' hide IconButton;
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/icon_button.dart';
import 'package:green_mart/features/ditells_pro/screen/ditells_screen.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, DitellsScreen(model: model));
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.background,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Hero(
                    tag: model.tagKey,
                    child: Image.asset(model.image),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                model.name,
                style: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 7),
              Text(
                model.weight,
                style: TextStyles.caption1.copyWith(color: AppColors.grey),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${model.price}',
                    style: TextStyles.body.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButtonApp(icon: Icons.add, color: AppColors.background),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
