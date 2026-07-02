import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/images_app.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/filter_sheet.dart';
import 'package:green_mart/features/beverages/widgets/beverages_builder.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Beverages',
          style: TextStyles.title.copyWith(fontWeight: FontWeight.w600),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: InkWell(
              onTap: () {
                showFilterBottomSheet(context);
              },
              child: Image.asset(AppImages.filter, width: 24, height: 24),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Center(child: BeveragesGrid()),
      ),
    );
  }
}
