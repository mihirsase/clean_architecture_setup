import 'package:auto_route/auto_route.dart';
import 'package:shop_me/core/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ArticlesRoute.page, initial: true),
  ];
}
