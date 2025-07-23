import 'package:flutter/material.dart';
import 'package:shop_me/core/di/injection.dart';
import 'package:shop_me/core/router/app_router.dart';

final appRouter = AppRouter();

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
    return MaterialApp.router(
      title: 'Shop Me',
      routerConfig: appRouter.config(),
    );
  }
}
