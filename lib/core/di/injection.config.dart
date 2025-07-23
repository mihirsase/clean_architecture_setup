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
import 'package:shop_me/features/home/data/data_source/remote/home_page_api.dart'
    as _i967;
import 'package:shop_me/features/home/data/repositories/home_page_repository.dart'
    as _i39;

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
    gh.lazySingleton<_i732.ApiClient>(() => _i1041.DioClient(gh<_i361.Dio>()));
    gh.factory<_i967.HomePageApi>(() => _i967.HomePageApiImpl());
    gh.factory<_i39.HomePageRepository>(
      () => _i39.HomePageRepositoryImpl(gh<_i967.HomePageApi>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i816.RegisterModule {}
