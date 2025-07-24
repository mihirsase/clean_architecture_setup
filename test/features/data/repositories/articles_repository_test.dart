import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shop_me/core/network/api_response.dart';
import 'package:shop_me/core/usecase/either.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/features/articles/data/models/news_article_model.dart';
import 'package:shop_me/features/articles/data/repositories/articles_repository.dart';

import '../../../helpers/mock_helpers.dart';
import '../fakes/fake_articles_response.dart';

void main() {
  late MockArticlesApi mockApi;
  late ArticlesRepositoryImpl repository;

  final successResponse = ApiResponse(
    statusCode: 200,
    data: jsonDecode(fakeArticlesResponse),
    headers: {},
  );

  setUp(() {
    mockApi = MockArticlesApi();
    repository = ArticlesRepositoryImpl(mockApi);
  });

  group('ArticlesRepositoryImpl', () {
    test('returns Right(List<NewsArticleModel>) when API succeeds', () async {
      // Arrange
      when(
        () => mockApi.getArticles(),
      ).thenAnswer((_) async => successResponse);

      // Act
      final result = await repository.getNyTimesArticles();

      // Assert
      expect(result, isA<Right<AppFailure, List<NewsArticleModel>>>());
      final right = result as Right;
      expect(
        right.value.first.title,
        'CBS Canceling ‘Late Show With Stephen Colbert’ After Next Season',
      );
      verify(() => mockApi.getArticles()).called(1);
    });

    test('returns Left(ServerFailure) when response is not success', () async {
      // Arrange
      final failedResponse = ApiResponse(
        statusCode: 500,
        data: {},
        headers: {},
      );
      when(() => mockApi.getArticles()).thenAnswer((_) async => failedResponse);

      // Act
      final result = await repository.getNyTimesArticles();

      // Assert
      expect(result, isA<Left<AppFailure, List<NewsArticleModel>>>());
      expect((result as Left).value, isA<ServerFailure>());
      verify(() => mockApi.getArticles()).called(1);
    });

    test(
      'returns Left(DataParsingFailure) when response parsing fails',
      () async {
        // Arrange: corrupt JSON that will cause `fromJsonList` to fail
        final invalidJson = {
          'results': [null],
        };

        final badDataResponse = ApiResponse(
          statusCode: 200,
          data: invalidJson,
          headers: {},
        );

        when(
          () => mockApi.getArticles(),
        ).thenAnswer((_) async => badDataResponse);

        // Act
        final result = await repository.getNyTimesArticles();

        // Assert
        expect(result, isA<Left<AppFailure, List<NewsArticleModel>>>());
        expect((result as Left).value, isA<DataParsingFailure>());
        verify(() => mockApi.getArticles()).called(1);
      },
    );

    test(
      'returns Left(ServerFailure) when unknown exception is thrown',
      () async {
        // Arrange
        when(() => mockApi.getArticles()).thenThrow(Exception('API error'));

        // Act
        final result = await repository.getNyTimesArticles();

        // Assert
        expect(result, isA<Left<AppFailure, List<NewsArticleModel>>>());
        expect((result as Left).value, isA<ServerFailure>());
        verify(() => mockApi.getArticles()).called(1);
      },
    );
  });
}
