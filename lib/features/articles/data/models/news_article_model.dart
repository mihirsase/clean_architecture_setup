import 'package:json_annotation/json_annotation.dart';
import 'package:shop_me/features/articles/data/models/media_model.dart';

part 'news_article_model.g.dart';

@JsonSerializable(createToJson: false)
class NewsArticleModel {
  final String uri;
  final String url;
  final int id;
  @JsonKey(name: 'asset_id')
  final int assetId;
  final String source;
  @JsonKey(name: 'published_date')
  final String publishedDate;
  final String updated;
  final String section;
  final String subsection;
  final String nytdsection;
  @JsonKey(name: 'adx_keywords')
  final String adxKeywords;
  final String? column;
  final String byline;
  final String type;
  final String title;
  final String abstract;
  @JsonKey(name: 'des_facet')
  final List<String> desFacet;
  @JsonKey(name: 'org_facet')
  final List<String> orgFacet;
  @JsonKey(name: 'per_facet')
  final List<String> perFacet;
  @JsonKey(name: 'geo_facet')
  final List<String> geoFacet;
  @JsonKey(name: 'media')
  final List<MediaModel> media;
  @JsonKey(name: 'eta_id')
  final int etaId;

  NewsArticleModel({
    required this.uri,
    required this.url,
    required this.id,
    required this.assetId,
    required this.source,
    required this.publishedDate,
    required this.updated,
    required this.section,
    required this.subsection,
    required this.nytdsection,
    required this.adxKeywords,
    required this.column,
    required this.byline,
    required this.type,
    required this.title,
    required this.abstract,
    required this.desFacet,
    required this.orgFacet,
    required this.perFacet,
    required this.geoFacet,
    required this.media,
    required this.etaId,
  });

  factory NewsArticleModel.fromJson(Map<String, dynamic> json) =>
      _$NewsArticleModelFromJson(json);

  static List<NewsArticleModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((json) => NewsArticleModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
