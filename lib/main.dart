import 'package:flutter/material.dart';
import 'package:shop_me/core/di/injection.dart';
import 'package:shop_me/core/theme/app_colors.dart';
import 'package:shop_me/core/theme/app_text_style.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.surface.primary,
        body: Center(
          child: Text('Welcome to Shop Me!', style: AppTextStyles.label.large),
        ),
      ),
    );
  }
}
