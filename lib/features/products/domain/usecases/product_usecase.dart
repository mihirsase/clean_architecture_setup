import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/core/usecase/usecase.dart';
import 'package:shop_me/features/products/data/repositories/product_repository.dart';
import 'package:shop_me/features/products/domain/entities/product_entity.dart';

@Injectable()
class ProductUsecase implements UseCaseNoArg<List<ProductEntity>> {
  final ProductRepository productRepository;
  ProductUsecase(this.productRepository);
  @override
  Future<Either<AppFailure, List<ProductEntity>>> call() async {
    final either = await productRepository.getProducts();
    return either.fold(
      (failure) {
        return Left(failure);
      },
      (productModels) {
        return Right(ProductEntity.fromProductModelList(productModels));
      },
    );
  }
}
