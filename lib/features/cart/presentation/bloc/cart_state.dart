import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_me/features/product_details/domain/entities/product_details_entity.dart';

part 'cart_state.freezed.dart';
@freezed
sealed class CartState with _$CartState{
  const factory CartState.loaded(Map<ProductDetailsEntity, int> cartItems) = CartStateLoaded;
}