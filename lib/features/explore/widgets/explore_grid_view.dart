import 'package:flutter/material.dart';
import 'package:green_mart/features/explore/widgets/item_explore.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class ExploreGridView extends StatelessWidget {
  const ExploreGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 10,
        mainAxisExtent: 189,
      ),
      itemBuilder: (context, index) {
        return ItemExplore(model: findProduct[index]);
      },
      itemCount: findProduct.length,
    );
  }
}
