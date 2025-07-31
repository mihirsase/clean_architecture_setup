import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.freezed.dart';

@freezed
sealed class ProductEvent with _$ProductEvent{
  factory ProductEvent.loadProducts() = LoadProducts;
}

