import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/features/articles/data/data_source/remote/articles_api.dart';
import 'package:shop_me/features/articles/data/models/news_article_model.dart';

abstract class ArticlesRepository {
  Future<Either<AppFailure, List<NewsArticleModel>>> getNyTimesArticles();
}

@Injectable(as: ArticlesRepository)
class ArticlesRepositoryImpl implements ArticlesRepository {
  final ArticlesApi articlesApi;
  ArticlesRepositoryImpl(this.articlesApi);
  @override
  Future<Either<AppFailure, List<NewsArticleModel>>>
  getNyTimesArticles() async {
    try {
      final response = await articlesApi.getArticles();
      if (response.isSuccess) {
        return Right(NewsArticleModel.fromJsonList(response.data['results']));
      } else {
        return Left(ServerFailure());
      }
    } on TypeError catch (_) {
      return Left(DataParsingFailure());
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
