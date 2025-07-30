import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_me/features/product_details/domain/usecases/product_details_usecase.dart';
import 'package:shop_me/features/product_details/presentation/bloc/product_detail_event.dart';
import 'package:shop_me/features/product_details/presentation/bloc/product_detail_state.dart';

@Injectable()
class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailsState> {
  final ProductDetailsUsecase productDetailsUsecase;

  ProductDetailBloc(this.productDetailsUsecase)
    : super(ProductDetailsLoading()) {
    on<LoadProductDetails>(_loadProductDetails);
  }

  Future<void> _loadProductDetails(
    LoadProductDetails event,
    Emitter<ProductDetailsState> emit,
  ) async {
    final either = await productDetailsUsecase.call(event.productId);
    either.when(
      error: (failure) {
        emit(ProducDetailsFailure(failure.message));
      },
      success: (details) {
        emit(PrductDetailsLoaded(details));
      },
    );
  }
}
