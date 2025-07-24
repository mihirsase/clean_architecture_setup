import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/features/home/domain/entities/news_article_entity.dart';

abstract class ArticlesState {}

class ArticlesInitial extends ArticlesState {}

class ArticlesLoading extends ArticlesState {}

class ArticlesLoaded extends ArticlesState {
  final List<NewsArticleEntity> articles;

  ArticlesLoaded(this.articles);
}

class ArticlesError extends ArticlesState {
  final AppFailure failure;

  ArticlesError(this.failure);
}
