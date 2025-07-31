import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_me/features/product_details/domain/entities/product_details_entity.dart';

part 'cart_event.freezed.dart';

@freezed
sealed class CartEvent with _$CartEvent {
  factory CartEvent.removeFromCart(final ProductDetailsEntity product) =
      RemoveFromCart;
  factory CartEvent.addToCart(final ProductDetailsEntity product) = AddToCart;
  factory CartEvent.clearCart() = ClearCart;
}
