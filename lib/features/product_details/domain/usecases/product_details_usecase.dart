import 'package:injectable/injectable.dart';
import 'package:shop_me/core/usecase/either.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/core/usecase/usecase.dart';
import 'package:shop_me/features/product_details/data/repositories/product_details_repository.dart';
import 'package:shop_me/features/product_details/domain/entities/product_details_entity.dart';

@Injectable()
class ProductDetailsUsecase extends UseCase<ProductDetailsEntity, int> {
  final ProductDetailsRepository productDetailsRepository;

  ProductDetailsUsecase(this.productDetailsRepository);

  @override
  Future<Either<AppFailure, ProductDetailsEntity>> call(
    int productId,
  ) async {
    final either = await productDetailsRepository.getProductDetails(productId);
    return either.fold(
      (failure) {
        return Left(failure);
      },
      (model) {
        return Right(ProductDetailsEntity.fromProductDetailModel(model));
      },
    );
  }
}
