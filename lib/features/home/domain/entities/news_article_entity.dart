import 'package:shop_me/features/home/data/models/news_article_model.dart';
import 'package:shop_me/features/home/domain/entities/media_entity.dart';

class NewsArticleEntity {
  final int id;
  final String url;
  final DateTime publishedDate;
  final String title;
  final String abstract;
  final List<MediaEntity> media;

  NewsArticleEntity({
    required this.id,
    required this.url,
    required this.publishedDate,
    required this.title,
    required this.abstract,
    required this.media,
  });

  factory NewsArticleEntity.fromModel(NewsArticleModel model) {
    return NewsArticleEntity(
      id: model.id,
      url: model.url,
      publishedDate: DateTime.parse(model.publishedDate),
      title: model.title,
      abstract: model.abstract,
      media: model.media.map(MediaEntity.fromModel).toList(),
    );
  }

  static List<NewsArticleEntity> fromModelList(List<NewsArticleModel> models) {
    return models.map((model) => NewsArticleEntity.fromModel(model)).toList();
  }
  
}
