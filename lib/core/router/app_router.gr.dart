// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:shop_me/features/articles/presentation/pages/articles_page.dart'
    as _i1;
import 'package:shop_me/features/product_details/presentation/pages/product_details_page.dart'
    as _i2;
import 'package:shop_me/features/products/presentation/pages/product_page.dart'
    as _i3;

/// generated route for
/// [_i1.ArticlesPage]
class ArticlesRoute extends _i4.PageRouteInfo<void> {
  const ArticlesRoute({List<_i4.PageRouteInfo>? children})
    : super(ArticlesRoute.name, initialChildren: children);

  static const String name = 'ArticlesRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.ArticlesPage();
    },
  );
}

/// generated route for
/// [_i2.ProductDetailsPage]
class ProductDetailsRoute extends _i4.PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    _i5.Key? key,
    required int productId,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         ProductDetailsRoute.name,
         args: ProductDetailsRouteArgs(key: key, productId: productId),
         rawPathParams: {'productId': productId},
         initialChildren: children,
       );

  static const String name = 'ProductDetailsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductDetailsRouteArgs>(
        orElse:
            () => ProductDetailsRouteArgs(
              productId: pathParams.getInt('productId'),
            ),
      );
      return _i2.ProductDetailsPage(key: args.key, productId: args.productId);
    },
  );
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({this.key, required this.productId});

  final _i5.Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, productId: $productId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductDetailsRouteArgs) return false;
    return key == other.key && productId == other.productId;
  }

  @override
  int get hashCode => key.hashCode ^ productId.hashCode;
}

/// generated route for
/// [_i3.ProductPage]
class ProductRoute extends _i4.PageRouteInfo<void> {
  const ProductRoute({List<_i4.PageRouteInfo>? children})
    : super(ProductRoute.name, initialChildren: children);

  static const String name = 'ProductRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.ProductPage();
    },
  );
}
