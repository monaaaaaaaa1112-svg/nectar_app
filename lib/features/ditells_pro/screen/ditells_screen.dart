import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/core/constants/images_app.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/home/model/product_model.dart';

class DitellsScreen extends StatelessWidget {
  const DitellsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.accent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(AppImages.download, width: 24, height: 24),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * .3,
            decoration: BoxDecoration(
              color: AppColors.accent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: Hero(
                  tag: model.tagKey,
                  child: Image.asset(model.image, fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model.name,
                  style: TextStyles.title2.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SvgPicture.asset(AppImages.heartSvg),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: Text(
              '${model.weight},price',
              style: TextStyles.caption2.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              spacing: 10,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, size: 29, color: AppColors.primary),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(color: AppColors.accent, width: 3),
                  ),
                  child: Center(child: Text('1', style: TextStyles.subtitle)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove, size: 29),
                ),
                SizedBox(width: 140),
                Text(
                  '\$${model.price}',
                  style: TextStyles.body.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 2,
            color: Colors.grey.withAlpha(128),
            endIndent: 10,
            indent: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              initiallyExpanded: true,
              title: Text('Product Detail', style: TextStyles.title),
              children: [
                Text(
                  'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                  style: TextStyles.caption2,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(
            height: 2,
            color: Colors.grey.withAlpha(128),
            endIndent: 10,
            indent: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Review', style: TextStyles.title),
                Image.asset(AppImages.priview),
                Icon(Icons.arrow_back_ios_new),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
        child: MainButton(text: 'Add To Basket', onPressed: () {}),
      ),
    );
  }
}
