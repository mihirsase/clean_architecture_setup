import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_event.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_state.dart';

@Injectable()
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartStateLoaded({})) {
    on<AddToCart>(_addToCart);
    on<RemoveFromCart>(_removeFromCart);
    on<ClearCart>(_clearCart);
  }

  FutureOr<void> _addToCart(AddToCart event, Emitter<CartState> emit) {
    if (state is CartStateLoaded) {
      final cartItems = (state as CartStateLoaded).cartItems;
      if (cartItems.containsKey(event.product)) {
        cartItems[event.product] = cartItems[event.product]! + 1;
        emit(CartStateLoaded(cartItems));
      } else {
        cartItems[event.product] = 1;
        emit(CartStateLoaded(cartItems));
      }
    }
  }

  FutureOr<void> _removeFromCart(
    RemoveFromCart event,
    Emitter<CartState> emit,
  ) {
    if (state is CartStateLoaded) {
      final cartItems = (state as CartStateLoaded).cartItems;
      if (cartItems.containsKey(event.product)) {
        cartItems[event.product] = cartItems[event.product]! - 1;

        if (cartItems[event.product]! == 0) {
          cartItems.remove(event.product);
        }
        emit(CartStateLoaded(cartItems));
      }
    }
  }

  FutureOr<void> _clearCart(ClearCart event, Emitter<CartState> emit) {
    emit(CartStateLoaded({}));
  }
}
