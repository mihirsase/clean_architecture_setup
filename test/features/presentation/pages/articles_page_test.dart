import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shop_me/core/usecase/either.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/features/articles/domain/usecases/articles_use_case.dart';
import 'package:shop_me/features/articles/presentation/bloc/articles/articles_bloc.dart';
import 'package:shop_me/features/articles/presentation/bloc/articles/articles_state.dart';
import 'package:shop_me/features/articles/presentation/pages/articles_page.dart';

import '../../../helpers/di/injection.dart';
import '../../../helpers/mock_helpers.dart';
import '../../data/fakes/fake_articles_response.dart';

void configureDependenciesForTest(
  MockArticlesBloc mockBloc,
  MockArticlesUseCase mockUseCase,
) {
  getItTest.reset();

  getItTest.registerFactory<ArticlesBloc>(() => mockBloc);
  getItTest.registerFactory<ArticlesUseCase>(() => mockUseCase);
}

void main() {
  late MockArticlesBloc mockBloc;
  late MockArticlesUseCase mockUseCase;

  setUp(() {
    mockBloc = MockArticlesBloc();
    mockUseCase = MockArticlesUseCase();
    when(() => mockUseCase()).thenAnswer((_) async {
      return Right([]); // return empty list of articles
    });
    configureDependenciesForTest(mockBloc, mockUseCase);
  });

  tearDown(() {
    getItTest.reset();
  });

  testWidgets('shows loading indicator when state is ArticlesLoading', (
    tester,
  ) async {
    // Arrange
    when(() => mockBloc.state).thenReturn(ArticlesLoading());

    // Act
    await tester.pumpWidget(MaterialApp(home: ArticlesPage()));

    // Assert
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('shows list of articles when state is ArticlesLoaded', (
    tester,
  ) async {
    final articles = getFakeArticleEntities();
    when(() => mockUseCase()).thenAnswer((_) async => Right(articles));
    await tester.pumpWidget(MaterialApp(home: ArticlesPage()));
    await tester.pump();

    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(ListTile), findsNWidgets(articles.length));
    expect(find.text(articles.first.title), findsOneWidget);
    expect(find.text(articles.first.abstract), findsOneWidget);
  });

  testWidgets('shows error message when state is ArticlesError', (
    tester,
  ) async {
    final failure = ServerFailure();
    when(() => mockUseCase()).thenAnswer((_) async => Left(failure));

    await tester.pumpWidget(MaterialApp(home: ArticlesPage()));
    await tester.pump();

    expect(find.text(failure.message), findsOneWidget);
  });
}
