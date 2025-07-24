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
import 'package:shop_me/features/home/data/data_source/remote/articles_api.dart'
    as _i165;
import 'package:shop_me/features/home/data/repositories/articles_repository.dart'
    as _i452;
import 'package:shop_me/features/home/domain/usecases/articles_use_case.dart'
    as _i649;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.singleton<_i669.NavigatorHelper>(() => _i669.NavigatorHelper());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.factory<_i732.ApiClient>(() => _i1041.DioClient(gh<_i361.Dio>()));
    gh.factory<_i165.ArticlesApi>(
      () => _i165.ArticlesApiImpl(gh<_i732.ApiClient>()),
    );
    gh.factory<_i452.ArticlesRepository>(
      () => _i452.ArticlesRepositoryImpl(gh<_i165.ArticlesApi>()),
    );
    gh.factory<_i649.ArticlesUseCase>(
      () => _i649.ArticlesUseCase(gh<_i452.ArticlesRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i816.RegisterModule {}
