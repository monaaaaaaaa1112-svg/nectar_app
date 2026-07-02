import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigations.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/features/explore/widgets/explore_grid_view.dart';
import 'package:green_mart/features/search/sarch_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Products', style: TextStyles.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextFormField(
              hint: 'Search Store',
              prefixIcon: const Icon(Icons.search),
              onTap: () {
                pushTo(context, SearchScreen());
              },
              readOnly: true,
            ),
            SizedBox(height: 10),
            Expanded(child: ExploreGridView()),
          ],
        ),
      ),
    );
  }
}
