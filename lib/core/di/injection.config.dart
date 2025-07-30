// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shop_me/core/di/register_module.dart' as _i816;
import 'package:shop_me/core/network/api_client.dart' as _i732;
import 'package:shop_me/core/network/clients/dio_client.dart' as _i1041;
import 'package:shop_me/core/router/navigator_helper.dart' as _i669;
import 'package:shop_me/features/articles/data/data_source/remote/articles_api.dart'
    as _i549;
import 'package:shop_me/features/articles/data/repositories/articles_repository.dart'
    as _i917;
import 'package:shop_me/features/articles/domain/usecases/articles_use_case.dart'
    as _i167;
import 'package:shop_me/features/articles/presentation/bloc/articles/articles_bloc.dart'
    as _i543;
import 'package:shop_me/features/cart/presentation/bloc/cart_bloc.dart'
    as _i133;
import 'package:shop_me/features/product_details/data/data_source/remote/product_detail_api.dart'
    as _i1031;
import 'package:shop_me/features/product_details/data/repositories/product_details_repository.dart'
    as _i539;
import 'package:shop_me/features/product_details/domain/usecases/product_details_usecase.dart'
    as _i356;
import 'package:shop_me/features/product_details/presentation/bloc/product_detail_bloc.dart'
    as _i588;
import 'package:shop_me/features/products/data/data_source/remote/product_api.dart'
    as _i854;
import 'package:shop_me/features/products/data/repositories/product_repository.dart'
    as _i586;
import 'package:shop_me/features/products/domain/usecases/product_usecase.dart'
    as _i432;
import 'package:shop_me/features/products/presentation/bloc/product_bloc.dart'
    as _i1016;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i133.CartBloc>(() => _i133.CartBloc());
    gh.singleton<_i669.NavigatorHelper>(() => _i669.NavigatorHelper());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.factory<_i732.ApiClient>(() => _i1041.DioClient(gh<_i361.Dio>()));
    gh.factory<_i549.ArticlesApi>(
      () => _i549.ArticlesApiImpl(gh<_i732.ApiClient>()),
    );
    gh.factory<_i917.ArticlesRepository>(
      () => _i917.ArticlesRepositoryImpl(gh<_i549.ArticlesApi>()),
    );
    gh.factory<_i854.ProductApi>(() => _i854.ProductApi(gh<_i732.ApiClient>()));
    gh.factory<_i1031.ProductDetailApi>(
      () => _i1031.ProductDetailApi(gh<_i732.ApiClient>()),
    );
    gh.factory<_i167.ArticlesUseCase>(
      () => _i167.ArticlesUseCase(gh<_i917.ArticlesRepository>()),
    );
    gh.factory<_i586.ProductRepository>(
      () => _i586.ProductRepositoryImp(gh<_i854.ProductApi>()),
    );
    gh.factory<_i543.ArticlesBloc>(
      () => _i543.ArticlesBloc(gh<_i167.ArticlesUseCase>()),
    );
    gh.factory<_i432.ProductUsecase>(
      () => _i432.ProductUsecase(gh<_i586.ProductRepository>()),
    );
    gh.factory<_i539.ProductDetailsRepository>(
      () => _i539.ProductDetailsRespositoryImp(gh<_i1031.ProductDetailApi>()),
    );
    gh.factory<_i356.ProductDetailsUsecase>(
      () => _i356.ProductDetailsUsecase(gh<_i539.ProductDetailsRepository>()),
    );
    gh.factory<_i588.ProductDetailBloc>(
      () => _i588.ProductDetailBloc(gh<_i356.ProductDetailsUsecase>()),
    );
    gh.factory<_i1016.ProductBloc>(
      () => _i1016.ProductBloc(gh<_i432.ProductUsecase>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i816.RegisterModule {}
