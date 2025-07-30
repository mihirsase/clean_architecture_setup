import 'package:shop_me/features/products/data/models/product_model.dart';

class ProductEntity {
  final int id;
  final String title;
  final String description;
  final double price;
  final String thumbnail;
  final List<String> images;

  ProductEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
    required this.images,
  });

  factory ProductEntity.fromProductModel(final ProductModel model) {
    return ProductEntity(
      id: model.id,
      title: model.title,
      description: model.description,
      price: model.price,
      thumbnail: model.thumbnail,
      images: model.images,
    );
  }

  static List<ProductEntity> fromProductModelList(
    final List<ProductModel> models,
  ) {
    return models.map((e) => ProductEntity.fromProductModel(e)).toList();
  }
}
