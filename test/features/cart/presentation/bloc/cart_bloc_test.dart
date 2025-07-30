import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_event.dart';
import 'package:shop_me/features/cart/presentation/bloc/cart_state.dart';

import '../../data/fakes/fake_product_details.dart';

void main() {
  late CartBloc cartBloc;

  setUp(() {
    cartBloc = CartBloc();
  });
  group("Cart bloc tests", () {
    test('Testing Empty State at start', () {
      expect(cartBloc.state, isA<CartStateLoaded>());
      expect((cartBloc.state as CartStateLoaded).cartItems.isEmpty, isTrue);
    });

    blocTest(
      'Add same product twice to cart bloc test',
      build: () => cartBloc,
      act: (bloc) {
        bloc.add(AddToCart(fakeProductDetailsEntity1));
        bloc.add(AddToCart(fakeProductDetailsEntity1));
      },
      expect:
          () => [
            CartStateLoaded({fakeProductDetailsEntity1: 1}),
            CartStateLoaded({fakeProductDetailsEntity1: 2}),
          ],
    );

    blocTest(
      'Add two product to cart bloc test',
      build: () => cartBloc,
      act: (bloc) {
        bloc.add(AddToCart(fakeProductDetailsEntity1));
        bloc.add(AddToCart(fakeProductDetailsEntity2));
      },
      expect:
          () => [
            CartStateLoaded({fakeProductDetailsEntity1: 1}),
            CartStateLoaded({
              fakeProductDetailsEntity1: 1,
              fakeProductDetailsEntity2: 1,
            }),
          ],
    );

    blocTest(
      'Add two items of same product to cart and remove one product bloc test',
      build: () => cartBloc,
      act: (bloc) {
        bloc.add(AddToCart(fakeProductDetailsEntity1));
        bloc.add(AddToCart(fakeProductDetailsEntity1));
        bloc.add(RemoveFromCart(fakeProductDetailsEntity1));
      },
      expect:
          () => [
            CartStateLoaded({fakeProductDetailsEntity1: 1}),
            CartStateLoaded({fakeProductDetailsEntity1: 2}),
            CartStateLoaded({fakeProductDetailsEntity1: 1}),
          ],
    );

    blocTest(
      'Add two items of same product to cart and remove two product bloc test',
      build: () => cartBloc,
      act: (bloc) {
        bloc.add(AddToCart(fakeProductDetailsEntity1));
        bloc.add(AddToCart(fakeProductDetailsEntity1));
        bloc.add(RemoveFromCart(fakeProductDetailsEntity1));
        bloc.add(RemoveFromCart(fakeProductDetailsEntity1));
      },
      expect:
          () => [
            CartStateLoaded({fakeProductDetailsEntity1: 1}),
            CartStateLoaded({fakeProductDetailsEntity1: 2}),
            CartStateLoaded({fakeProductDetailsEntity1: 1}),
            CartStateLoaded({}),
          ],
    );

    blocTest(
      'Add two items of same product to cart and clear cart bloc test',
      build: () => cartBloc,
      act: (bloc) {
        bloc.add(AddToCart(fakeProductDetailsEntity1));
        bloc.add(AddToCart(fakeProductDetailsEntity1));
        bloc.add(ClearCart());
      },
      expect:
          () => [
            CartStateLoaded({fakeProductDetailsEntity1: 1}),
            CartStateLoaded({fakeProductDetailsEntity1: 2}),
            CartStateLoaded({}),
          ],
    );
  });
}
