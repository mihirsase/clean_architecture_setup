import 'package:shop_me/features/product_details/domain/entities/product_details_entity.dart';

sealed class CartEvent {}

class AddToCart extends CartEvent {
  final ProductDetailsEntity product;

  AddToCart(this.product);
}

class RemoveFromCart extends CartEvent {
  final ProductDetailsEntity product;

  RemoveFromCart(this.product);
}

class ClearCart extends CartEvent {
}
