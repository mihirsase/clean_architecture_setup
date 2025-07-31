import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_details_model.g.dart';
part 'product_details_model.freezed.dart';

@freezed
@JsonSerializable(createToJson: false)
class ProductDetailsModel with _$ProductDetailsModel {
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
  final List<String> tags;
  @override
  final String? brand;
  @override
  final String sku;
  @override
  final int weight;
  @override
  final String warrantyInformation;
  @override
  final String shippingInformation;
  @override
  final String availabilityStatus;
  @override
  final String returnPolicy;
  @override
  final int minimumOrderQuantity;
  @override
  final List<String> images;
  @override
  final String thumbnail;

  ProductDetailsModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.sku,
    required this.weight,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.images,
    required this.thumbnail,
    this.brand,
  });

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}
