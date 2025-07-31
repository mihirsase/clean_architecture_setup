import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_me/features/product_details/data/models/product_details_model.dart';
part 'product_details_entity.freezed.dart';

@freezed
class ProductDetailsEntity with _$ProductDetailsEntity {
  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String category;
  @override
  final double price;
  @override
  final double discountPercentage;
  @override
  final double rating;
  @override
  final int stock;
  @override
  final String? brand;
  @override
  final int weight;
  @override
  final List<String> images;
  @override
  final String thumbnail;

  const ProductDetailsEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.weight,
    required this.images,
    required this.thumbnail,
    this.brand,
  });

  factory ProductDetailsEntity.fromProductDetailModel(
    final ProductDetailsModel model,
  ) {
    return ProductDetailsEntity(
      id: model.id,
      title: model.title,
      description: model.description,
      category: model.category,
      price: model.price,
      discountPercentage: model.discountPercentage,
      rating: model.rating,
      stock: model.stock,
      brand: model.brand,
      weight: model.weight,
      images: model.images,
      thumbnail: model.thumbnail,
    );
  }

}
