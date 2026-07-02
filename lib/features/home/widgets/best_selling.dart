import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/item_card.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Best Selling', style: TextStyles.title),
            TextButton(onPressed: () {}, child: Text('See All')),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var model = bestSelling[index];
              return ItemCard(model: model);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: bestSelling.length,
          ),
        ),
      ],
    );
  }
}
