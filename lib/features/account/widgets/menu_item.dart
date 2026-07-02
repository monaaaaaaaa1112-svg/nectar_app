import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, required this.name, required this.title});

  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(name, height: 20, width: 20),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF181725),
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.black,
          ),
          onTap: () {
            // أضف التنقل هنا
          },
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
          height: 1,
          thickness: 1,
          color: Color(0xFFE2E2E2),
        ),
      ],
    );
  }
}
