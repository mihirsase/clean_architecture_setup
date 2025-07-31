import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_me/features/products/domain/usecases/product_usecase.dart';
import 'package:shop_me/features/products/presentation/bloc/product_event.dart';
import 'package:shop_me/features/products/presentation/bloc/product_state.dart';

@Injectable()
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductUsecase productUsecase;
  ProductBloc(this.productUsecase) : super(ProductState.loading()) {
    on<LoadProducts>(_loadProducts);
  }

  Future<void> _loadProducts(
    LoadProducts event,
    Emitter<ProductState> emit,
  ) async {
    final either = await productUsecase.call();
    either.when(
      error: (failure) {
        emit(ProductState.failure(failure.message));
      },
      success: (products) {
        emit(ProductState.loaded(products));
      },
    );
  }
}
