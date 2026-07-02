import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/icon_button.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),

      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),

      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            padding: const EdgeInsets.all(5),
            child: Image.asset(model.image, fit: BoxFit.contain),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center, // مهم
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      model.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),

                    const Icon(Icons.close, size: 18, color: Colors.grey),
                  ],
                ),

                const SizedBox(height: 3),
                Text(
                  model.weight,
                  style: const TextStyle(color: Colors.grey, fontSize: 11),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    IconButtonApp(
                      icon: Icons.remove,
                      color: AppColors.background,
                    ),
                    const SizedBox(width: 12),
                    const Text("1", style: TextStyles.subtitle),
                    const SizedBox(width: 12),
                    IconButtonApp(icon: Icons.add, color: AppColors.background),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
