import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shop_me/core/constants/api_constants.dart';
import 'package:shop_me/core/constants/app_constants.dart';
import 'package:shop_me/core/network/api_response.dart';
import 'package:shop_me/features/articles/data/data_source/remote/articles_api.dart';

import '../../../helpers/mock_helpers.dart';

void main() {
  late MockApiClient mockApiClient;
  late ArticlesApiImpl articlesApi;

  setUp(() {
    mockApiClient = MockApiClient();
    articlesApi = ArticlesApiImpl(mockApiClient);
  });

  group('ArticlesApiImpl', () {
    test(
      'should call ApiClient.get with correct URL and query params',
      () async {
        // Arrange
        final expectedResponse = ApiResponse(
          statusCode: 200,
          data: {'results': []},
          headers: {},
        );

        when(
          () => mockApiClient.get(
            ApiConstants.mostPopularArticles,
            queryParameters: {'api-key': AppConstants.apiKey},
          ),
        ).thenAnswer((_) async => expectedResponse);

        // Act
        final result = await articlesApi.getArticles();

        // Assert
        expect(result, equals(expectedResponse));
        verify(
          () => mockApiClient.get(
            ApiConstants.mostPopularArticles,
            queryParameters: {'api-key': AppConstants.apiKey},
          ),
        ).called(1);
      },
    );
  });
}
