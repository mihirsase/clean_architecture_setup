import 'package:injectable/injectable.dart';
import 'package:shop_me/core/usecase/either.dart';
import 'package:shop_me/core/usecase/failures.dart';
import 'package:shop_me/core/usecase/usecase.dart';
import 'package:shop_me/features/articles/data/repositories/articles_repository.dart';
import 'package:shop_me/features/articles/domain/entities/news_article_entity.dart';

@Injectable()
class ArticlesUseCase extends UseCaseNoArg<List<NewsArticleEntity>> {
  final ArticlesRepository articlesRepository;
  ArticlesUseCase(this.articlesRepository);
  @override
  Future<Either<AppFailure, List<NewsArticleEntity>>> call() async {
    final either = await articlesRepository.getNyTimesArticles();
    return either.fold(
      (failure) => Left(failure),
      (articles) => Right(NewsArticleEntity.fromModelList(articles)),
    );
  }
}