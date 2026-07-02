import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/images_app.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/main_button.dart';
import 'package:green_mart/features/cart/widgets/cart_item.dart';
import 'package:green_mart/features/home/model/product_model.dart';
import 'package:green_mart/features/order_accepted/screens/accepted_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyles.title.copyWith(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.background,
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
                return CartItem(model: model);
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: drinks.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: MainButton(
              text: 'Go to Checkout',
              onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  backgroundColor: AppColors.background,
                  isScrollControlled: true,
                  useSafeArea: true,
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 24,
                        right: 24,
                        bottom: 16, // هامش مناسب أسفل الزر الثابت
                      ),
                      height:
                          MediaQuery.sizeOf(context).height *
                          0.55, // ارتفاع متناسق ومريح
                      child: Column(
                        children: [
                          // 1. رأس الـ Sheet (ثابت)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Checkout', style: TextStyles.title2),
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Divider(color: Colors.grey.shade300, height: 1),

                          // 2. محتوى الخيارات (قابل للتمرير)
                          Expanded(
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
                                  _buildCheckoutRow(
                                    title: 'Delivery',
                                    trailingWidget: Text(
                                      'Select Method',
                                      style: TextStyles.body.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey.shade200,
                                    height: 1,
                                  ),
                                  _buildCheckoutRow(
                                    title: 'Payment',
                                    trailingWidget: Image.asset(
                                      AppImages.details,
                                      width: 30,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey.shade200,
                                    height: 1,
                                  ),
                                  _buildCheckoutRow(
                                    title: 'Promo Code',
                                    trailingWidget: Text(
                                      'Pick discount',
                                      style: TextStyles.body.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey.shade200,
                                    height: 1,
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: SizedBox(
                              width: double.infinity,
                              child: MainButton(
                                text: 'Place Order',
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AcceptedScreen(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  // دالة مخصصة لبناء الأسطر بشكل موحد وأنيق جداً
  Widget _buildCheckoutRow({
    required String title,
    required Widget trailingWidget,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyles.subtitle.copyWith(
              color: AppColors.grey,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              trailingWidget,
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
