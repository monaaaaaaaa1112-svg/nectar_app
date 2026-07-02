import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_style.dart';
import 'package:green_mart/core/widgets/main_button.dart';

class OrderFailedDialog extends StatelessWidget {
  const OrderFailedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: Colors.black),
              ),
            ),

            Image.asset('assets/images/faild.png', height: 180),
            const SizedBox(height: 24),

            Text(
              'Oops! Order Failed',
              textAlign: TextAlign.center,
              style: TextStyles.title2.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 12),

            Text(
              'Something went terribly wrong.',
              textAlign: TextAlign.center,
              style: TextStyles.subtitle.copyWith(
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 32),

            MainButton(
              text: 'Please Try Again',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 16),

            MainButton(
              text: 'Back to home',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
