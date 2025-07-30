// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:shop_me/features/articles/presentation/pages/articles_page.dart'
    as _i1;
import 'package:shop_me/features/products/presentation/pages/product_page.dart'
    as _i2;

/// generated route for
/// [_i1.ArticlesPage]
class ArticlesRoute extends _i3.PageRouteInfo<void> {
  const ArticlesRoute({List<_i3.PageRouteInfo>? children})
    : super(ArticlesRoute.name, initialChildren: children);

  static const String name = 'ArticlesRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.ArticlesPage();
    },
  );
}

/// generated route for
/// [_i2.ProductPage]
class ProductRoute extends _i3.PageRouteInfo<void> {
  const ProductRoute({List<_i3.PageRouteInfo>? children})
    : super(ProductRoute.name, initialChildren: children);

  static const String name = 'ProductRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.ProductPage();
    },
  );
}
