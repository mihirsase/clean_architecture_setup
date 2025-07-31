import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_me/features/products/domain/entities/product_entity.dart';
part 'product_state.freezed.dart';

@freezed
sealed class ProductState with _$ProductState {
  factory ProductState.loading() = ProductsLoading;
  factory ProductState.loaded(final List<ProductEntity> products) =
      ProductsLoaded;
  factory ProductState.failure(final String message) = ProductsFailure;
}
