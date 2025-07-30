import 'package:equatable/equatable.dart';
import 'package:shop_me/features/product_details/domain/entities/product_details_entity.dart';

sealed class CartState extends Equatable {}

class CartStateLoaded extends CartState {
  final Map<ProductDetailsEntity, int> cartItems;

  CartStateLoaded(this.cartItems);

  @override
  List<Object?> get props => [cartItems];
}
