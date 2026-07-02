import 'package:flutter/material.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class DrinkItem extends StatelessWidget {
  const DrinkItem({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Image.asset(model.image, width: 50, height: 50),
      title: Text(
        model.name,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(model.weight),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            model.price.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
