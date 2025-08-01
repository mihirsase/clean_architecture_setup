import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/features/product_details/data/data_source/remote/product_detail_api.dart';
import 'package:shop_me/features/product_details/data/models/product_details_model.dart';

abstract class ProductDetailsRepository {
  Future<Either<AppFailure, ProductDetailsModel>> getProductDetails(
    int productId,
  );
}

@Injectable(as: ProductDetailsRepository)
class ProductDetailsRespositoryImp implements ProductDetailsRepository {
  final ProductDetailApi productDetailApi;

  ProductDetailsRespositoryImp(this.productDetailApi);
  
  @override
  Future<Either<AppFailure, ProductDetailsModel>> getProductDetails(
    int productId,
  ) async {
    try {
      final response = await productDetailApi.getProductDetails(productId);
      if(response.isSuccess){
          return Right(ProductDetailsModel.fromJson(response.data));
      }else{
       return Left(AppFailure('Unable to load product details')); 
      }
    } catch (e) {
      return Left(AppFailure('Unable to load product details'));
    }
  }
}
