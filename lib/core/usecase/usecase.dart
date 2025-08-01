import 'package:dartz/dartz.dart';
import 'package:shop_me/core/usecase/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<AppFailure, Type>> call(Params params);
}

abstract class UseCaseSync<Type, Params> {
  Either<AppFailure, Type> call(Params params);
}

abstract class UseCaseNoArg<Type> {
  Future<Either<AppFailure, Type>> call();
}

abstract class UseCaseSyncNoArg<Type> {
  Either<AppFailure, Type> call();
}
