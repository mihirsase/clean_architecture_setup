import 'package:injectable/injectable.dart';
import 'package:shop_me/core/usecase/either.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/features/products/data/data_source/remote/product_api.dart';
import 'package:shop_me/features/products/data/models/product_model.dart';

abstract class ProductRepository {
  Future<Either<AppFailure, List<ProductModel>>> getProducts();
}

@Injectable(as: ProductRepository)
class ProductRepositoryImp implements ProductRepository {
  final ProductApi productApi;
  ProductRepositoryImp(this.productApi);
  @override
  Future<Either<AppFailure, List<ProductModel>>> getProducts() async {
    try {
      final response = await productApi.getProducts();
      if (response.isSuccess) {
        return Right(ProductModel.fromList(response.data['products']));
      } else {
        return Left(AppFailure('Failed to fetch products'));
      }
    } catch (e) {
      return Left(AppFailure('Failed to load products'));
    }
  }
}
