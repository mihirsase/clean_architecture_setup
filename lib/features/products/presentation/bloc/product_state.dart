import 'package:shop_me/features/products/domain/entities/product_entity.dart';

sealed class ProductState {}

class ProductsLoading extends ProductState {}

class ProductsLoaded extends ProductState {
  final List<ProductEntity> products;

  ProductsLoaded(this.products);
}

class ProductsFailure extends ProductState {
  final String message;

  ProductsFailure(this.message);
}
