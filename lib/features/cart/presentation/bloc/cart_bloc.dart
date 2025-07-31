import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_event.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_state.dart';
import 'package:shop_me/features/product_details/domain/entities/product_details_entity.dart';

@Injectable()
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.loaded({})) {
    on<AddToCart>(_addToCart);
    on<RemoveFromCart>(_removeFromCart);
    on<ClearCart>(_clearCart);
  }

  FutureOr<void> _addToCart(AddToCart event, Emitter<CartState> emit) {
    if (state is CartStateLoaded) {
      final currentCart = Map<ProductDetailsEntity, int>.from(
        (state as CartStateLoaded).cartItems,
      );

      if (currentCart.containsKey(event.product)) {
        currentCart[event.product] = currentCart[event.product]! + 1;
      } else {
        currentCart[event.product] = 1;
      }

      emit(state.copyWith(cartItems: currentCart));
    }
  }

  FutureOr<void> _removeFromCart(
    RemoveFromCart event,
    Emitter<CartState> emit,
  ) {
    if (state is CartStateLoaded) {
      final currentCart = Map<ProductDetailsEntity, int>.from(
        (state as CartStateLoaded).cartItems,
      );
      if (currentCart.containsKey(event.product)) {
        currentCart[event.product] = currentCart[event.product]! - 1;

        if (currentCart[event.product]! == 0) {
          currentCart.remove(event.product);
        }
        emit(state.copyWith(cartItems: currentCart));
      }
    }
  }

  FutureOr<void> _clearCart(ClearCart event, Emitter<CartState> emit) {
    emit(state.copyWith(cartItems: {}));
  }
}
