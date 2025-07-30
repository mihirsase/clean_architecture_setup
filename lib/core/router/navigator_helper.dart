import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_me/core/router/app_router.gr.dart';

@singleton
class NavigatorHelper {
  Future push(BuildContext context, PageRouteInfo route) async {
    return context.router.push(route);
  }

  Future replace(BuildContext context, PageRouteInfo route) async {
    return context.router.replace(route);
  }

  Future pop(BuildContext context, {result}) {
    return context.router.maybePop(result);
  }

  Future popWithResult(BuildContext context, {result}) {
    return context.router.maybePop(result);
  }

  Future goToArticlesPage(BuildContext context) async {
    return replace(context, const ArticlesRoute());
  }

  Future goToProductDetailsPage(
    BuildContext context, {
    required int productId,
  }) async {
    return push(context, ProductDetailsRoute(productId: productId));
  }
}
