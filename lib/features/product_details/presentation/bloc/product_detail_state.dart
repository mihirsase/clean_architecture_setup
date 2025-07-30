import 'package:shop_me/features/product_details/domain/entities/product_details_entity.dart';

sealed class ProductDetailsState {}

class ProductDetailsLoading extends ProductDetailsState {}

class PrductDetailsLoaded extends ProductDetailsState {
  final ProductDetailsEntity productDetailsEntity;

  PrductDetailsLoaded(this.productDetailsEntity);
}

class ProducDetailsFailure extends ProductDetailsState {
  final String message;

  ProducDetailsFailure(this.message);
}
