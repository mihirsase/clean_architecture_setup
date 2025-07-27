import 'package:mocktail/mocktail.dart';
import 'package:shop_me/core/network/api_client.dart';
import 'package:shop_me/features/articles/data/data_source/remote/articles_api.dart';
import 'package:shop_me/features/articles/data/repositories/articles_repository.dart';
import 'package:shop_me/features/articles/domain/usecases/articles_use_case.dart';
import 'package:shop_me/features/articles/presentation/bloc/articles/articles_bloc.dart';

class MockApiClient extends Mock implements ApiClient {}

class MockArticlesApi extends Mock implements ArticlesApi {}

class MockArticlesRepository extends Mock implements ArticlesRepository {}

class MockArticlesUseCase extends Mock implements ArticlesUseCase {}

class MockArticlesBloc extends Mock implements ArticlesBloc {
  @override
  Future<void> close() => Future.value();
}
