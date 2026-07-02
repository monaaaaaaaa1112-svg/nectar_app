import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/item_card.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class BeveragesGrid extends StatelessWidget {
  const BeveragesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 10,
        mainAxisExtent: 250,
      ),
      itemBuilder: (context, index) {
        return ItemCard(model: drinks[index]);
      },
      itemCount: drinks.length,
    );
  }
}
