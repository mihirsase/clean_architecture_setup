import 'package:auto_route/auto_route.dart';
import 'package:shop_me/core/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  final String productDetailsPagePath = '/product-details-page/:productId';
  final String cartPagePath = '/cart';
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ProductRoute.page, initial: true, path: '/'),
    AutoRoute(page: ProductDetailsRoute.page, path: productDetailsPagePath),
    AutoRoute(page: CartRoute.page, path: cartPagePath),
  ];
}
