import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/drink_item.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/home/model/product_model.dart';
import 'package:green_mart/features/order_accepted/screens/failed_screen.dart';

class FavoruitScreen extends StatelessWidget {
  const FavoruitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Favourite', style: TextStyles.title),
        centerTitle: true,
        backgroundColor: AppColors.background,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          const Divider(
            height: 1,
            color: Colors.grey,
            endIndent: 20,
            indent: 20,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                var model = drinks[index];
                return DrinkItem(model: model);
              },
              separatorBuilder: (context, index) =>
                  Divider(color: Colors.grey.shade600, thickness: 1),
              itemCount: drinks.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: MainButton(
              text: 'Add All To Cart',
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible:
                      false, // يمنع قفل الدايلوج لو ضغط بره الكارد، لازم يضغط على الأزرار أو الـ X
                  builder: (context) => const OrderFailedDialog(),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
