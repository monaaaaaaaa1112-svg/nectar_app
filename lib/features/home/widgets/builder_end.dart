import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/item_card.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class EndBuilder extends StatelessWidget {
  const EndBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var model =
              allProducts[index]; // list مختلفة عن offers عشان منكررش نفس الـ Hero tag
          return ItemCard(model: model);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: allProducts.length,
      ),
    );
  }
}
