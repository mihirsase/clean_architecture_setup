import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shop_me/core/usecase/either.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/features/articles/domain/usecases/articles_use_case.dart';
import 'package:shop_me/features/articles/presentation/bloc/articles/articles_bloc.dart';
import 'package:shop_me/features/articles/presentation/bloc/articles/articles_event.dart';
import 'package:shop_me/features/articles/presentation/bloc/articles/articles_state.dart';

import '../../../../helpers/mock_helpers.dart';
import '../../data/fakes/fake_articles_response.dart';

void main() {
  late ArticlesBloc bloc;
  late ArticlesUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockArticlesUseCase();
    bloc = ArticlesBloc(mockUseCase);
  });

  tearDown(() {
    bloc.close();
  });

  group('ArticlesBloc', () {
    final fakeArticles = getFakeArticleEntities();

    test('initial state is ArticlesLoading', () {
      expect(bloc.state, isA<ArticlesLoading>());
    });

    blocTest<ArticlesBloc, ArticlesState>(
      'emits [ArticlesLoaded] when ArticlesUseCase returns success',
      build: () {
        when(() => mockUseCase.call())
            .thenAnswer((_) async => Right(fakeArticles));
        return bloc;
      },
      act: (bloc) => bloc.add(LoadArticles()),
      expect: () => [
        isA<ArticlesLoaded>().having((state) => state.articles.length, 'article count', fakeArticles.length),
      ],
      verify: (_) {
        verify(() => mockUseCase.call()).called(1);
      },
    );

    blocTest<ArticlesBloc, ArticlesState>(
      'emits [ArticlesError] when ArticlesUseCase returns failure',
      build: () {
        when(() => mockUseCase.call())
            .thenAnswer((_) async => Left(ServerFailure()));
        return bloc;
      },
      act: (bloc) => bloc.add(LoadArticles()),
      expect: () => [
        isA<ArticlesError>().having((state) => state.failure, 'failure', isA<ServerFailure>()),
      ],
      verify: (_) {
        verify(() => mockUseCase.call()).called(1);
      },
    );
  });
}