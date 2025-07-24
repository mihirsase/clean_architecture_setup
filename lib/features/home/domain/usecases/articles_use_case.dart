import 'package:injectable/injectable.dart';
import 'package:shop_me/core/usecase/either.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/core/usecase/usecase.dart';
import 'package:shop_me/features/home/data/repositories/home_page_repository.dart';
import 'package:shop_me/features/home/domain/entities/news_article_entity.dart';

@Injectable()
class ArticlesUseCase extends UseCaseNoArg<List<NewsArticleEntity>> {
  final HomePageRepository homePageRepository;
  ArticlesUseCase(this.homePageRepository);
  @override
  Future<Either<AppFailure, List<NewsArticleEntity>>> call() async {
    final either = await homePageRepository.getNyTimesArticles();
    return either.fold(
      (failure) => Left(failure),
      (articles) => Right(NewsArticleEntity.fromModelList(articles)),
    );
  }
}