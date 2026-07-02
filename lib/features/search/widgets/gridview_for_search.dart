import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/item_card.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class GridviewForSearch extends StatelessWidget {
  const GridviewForSearch({super.key, required this.products});
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return const Center(child: Text('No products found'));
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 10,
        mainAxisExtent: 220,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ItemCard(model: products[index]);
      },
    );
  }
}
