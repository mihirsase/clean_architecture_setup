import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable(createToJson: false)
class ProductModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final String thumbnail;
  final List<String> images;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
    required this.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  static List<ProductModel> fromList(List<dynamic> jsons) {
    return jsons
        .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
