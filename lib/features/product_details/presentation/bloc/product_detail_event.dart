sealed class ProductDetailEvent {}

class LoadProductDetails extends ProductDetailEvent {
  final int productId;

  LoadProductDetails({required this.productId});

}
