import 'package:injectable/injectable.dart';
import 'package:shop_me/core/usecase/either.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/features/home/data/data_source/remote/home_page_api.dart';
import 'package:shop_me/features/home/data/models/news_article_model.dart';

abstract class HomePageRepository {
  Future<Either<AppFailure, List<NewsArticleModel>>> getNyTimesArticles();
}

@Injectable(as: HomePageRepository)
class HomePageRepositoryImpl implements HomePageRepository {
  final HomePageApi homePageApi;
  HomePageRepositoryImpl(this.homePageApi);
  @override
  Future<Either<AppFailure, List<NewsArticleModel>>>
  getNyTimesArticles() async {
    final response = await homePageApi.getArticles();
    if (response.isSuccess) {
      return Right(NewsArticleModel.fromJsonList(response.data['results']));
    } else {
      return Left(ServerFailure());
    }
  }
}
