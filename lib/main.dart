import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_me/core/di/injection.dart';
import 'package:shop_me/core/router/app_router.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_bloc.dart';

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
    return BlocProvider(
      create: (context) => getIt<CartBloc>(),
      child: MaterialApp.router(
        title: 'Shop Me',
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
