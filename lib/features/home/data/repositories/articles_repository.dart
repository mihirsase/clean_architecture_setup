import 'package:injectable/injectable.dart';
import 'package:shop_me/core/usecase/either.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/features/home/data/data_source/remote/articles_api.dart';
import 'package:shop_me/features/home/data/models/news_article_model.dart';

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
    final response = await articlesApi.getArticles();
    if (response.isSuccess) {
      try {
        return Right(NewsArticleModel.fromJsonList(response.data['results']));
      } catch (e) {
        return Left(DataParsingFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
