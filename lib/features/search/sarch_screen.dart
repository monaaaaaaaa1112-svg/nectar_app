import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/custom_text_form_field.dart';
import 'package:green_mart/features/home/model/product_model.dart';
import 'package:green_mart/features/search/widgets/gridview_for_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final focusNode = FocusNode();
  String searchKay = '';

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchResults = getProdacteByName(searchKay);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Hero(
          tag: 'search',
          child: Material(
            color: Colors.transparent,
            child: CustomTextFormField(
              readOnly: false,
              focusNode: focusNode,
              hint: 'Search Store',
              prefixIcon: const Icon(Icons.search),
              onChanged: (value) {
                setState(() {
                  searchKay = value.toLowerCase();
                });
              },
            ),
          ),
        ),
        actions: [const SizedBox(width: 20)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridviewForSearch(products: searchResults),
      ),
    );
  }
}

List<ProductModel> getProdacteByName(String searchKay) {
  if (searchKay.isEmpty) {
    return allProducts;
  }

  return allProducts.where((product) {
    return product.name.toLowerCase().contains(searchKay);
  }).toList();
}
