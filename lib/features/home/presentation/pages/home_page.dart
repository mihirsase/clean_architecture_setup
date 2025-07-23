import 'package:flutter/material.dart';
import 'package:shop_me/core/di/injection.dart';
import 'package:shop_me/core/router/navigator_helper.dart';
import 'package:shop_me/core/theme/app_colors.dart';
import 'package:shop_me/core/theme/app_text_style.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Shop Me!', style: AppTextStyles.label.large),
          ],
        ),
      ),
    );
  }
}
