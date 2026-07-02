import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/images_app.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/widgets/custom_svg_picture.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/features/home/widgets/Groceries.dart';
import 'package:green_mart/features/home/widgets/best_selling.dart';
import 'package:green_mart/features/home/widgets/builder_end.dart';
import 'package:green_mart/features/home/widgets/offers_builder.dart';
import 'package:green_mart/features/search/sarch_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      CustomSvgPicture(path: AppImages.carrotSvg, width: 50),
                      SizedBox(height: 7),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on, size: 16),
                          Text(
                            'Dhaka, Banassre',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Hero(
                  tag: 'search',
                  child: Material(
                    color: Colors.transparent,
                    child: CustomTextFormField(
                      hint: 'Search Store',
                      readOnly: true,
                      prefixIcon: Icon(Icons.search),
                      onTap: () {
                        pushTo(context, SearchScreen());
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                OffersBuilder(),
                BestSellingBuilder(),
                GroceriesBuilder(),
                EndBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
