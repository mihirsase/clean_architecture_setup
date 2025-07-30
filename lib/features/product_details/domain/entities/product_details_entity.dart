import 'package:shop_me/features/product_details/data/models/product_details_model.dart';

class ProductDetailsEntity {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String? brand;
  final int weight;
  final List<String> images;
  final String thumbnail;

  ProductDetailsEntity({
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
