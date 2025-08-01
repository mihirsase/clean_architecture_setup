import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/features/articles/data/repositories/articles_repository.dart';
import 'package:shop_me/features/articles/domain/entities/news_article_entity.dart';
import 'package:shop_me/features/articles/domain/usecases/articles_use_case.dart';

import '../../../../helpers/mock_helpers.dart';
import '../../data/fakes/fake_articles_response.dart';

void main() {
  late ArticlesUseCase useCase;
  late ArticlesRepository mockRepository;

  setUp(() {
    mockRepository = MockArticlesRepository();
    useCase = ArticlesUseCase(mockRepository);
  });

  group('ArticlesUseCase', () {
    test('returns Right with list of NewsArticleEntity when repository succeeds', () async {
      // Arrange
      final models = getFakeArticles();
      when(() => mockRepository.getNyTimesArticles())
          .thenAnswer((_) async => Right(models));

      // Act
      final result = await useCase();

      // Assert
      expect(result, isA<Right<AppFailure, List<NewsArticleEntity>>>());
      final right = result as Right;
      expect(right.value.length, models.length);
      expect(right.value.first.title, models.first.title);
      verify(() => mockRepository.getNyTimesArticles()).called(1);
    });

    test('returns Left when repository returns a failure', () async {
      // Arrange
      when(() => mockRepository.getNyTimesArticles())
          .thenAnswer((_) async => Left(ServerFailure()));

      // Act
      final result = await useCase();

      // Assert
      expect(result, isA<Left<AppFailure, List<NewsArticleEntity>>>());
      verify(() => mockRepository.getNyTimesArticles()).called(1);
    });
  });
}