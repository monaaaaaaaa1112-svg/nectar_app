import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/base_item.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class GroceriesBuilder extends StatelessWidget {
  const GroceriesBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Groceries', style: TextStyles.title),
            TextButton(onPressed: () {}, child: Text('See All')),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 105,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var model = groceries[index];
              return BaseItem(model: model);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemCount: groceries.length,
          ),
        ),
      ],
    );
  }
}
