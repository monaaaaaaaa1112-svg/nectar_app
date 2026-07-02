import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/theme.dart';
import 'package:green_mart/features/start/splash_screen.dart';

// import 'package:green_mart/features/home/screens/home_screen.dart';
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: SplashScreen(),
    );
  }
}
