// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsArticleModel _$NewsArticleModelFromJson(Map<String, dynamic> json) =>
    NewsArticleModel(
      uri: json['uri'] as String,
      url: json['url'] as String,
      id: (json['id'] as num).toInt(),
      assetId: (json['asset_id'] as num).toInt(),
      source: json['source'] as String,
      publishedDate: json['published_date'] as String,
      updated: json['updated'] as String,
      section: json['section'] as String,
      subsection: json['subsection'] as String,
      nytdsection: json['nytdsection'] as String,
      adxKeywords: json['adx_keywords'] as String,
      column: json['column'] as String?,
      byline: json['byline'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      abstract: json['abstract'] as String,
      desFacet:
          (json['des_facet'] as List<dynamic>).map((e) => e as String).toList(),
      orgFacet:
          (json['org_facet'] as List<dynamic>).map((e) => e as String).toList(),
      perFacet:
          (json['per_facet'] as List<dynamic>).map((e) => e as String).toList(),
      geoFacet:
          (json['geo_facet'] as List<dynamic>).map((e) => e as String).toList(),
      media:
          (json['media'] as List<dynamic>)
              .map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      etaId: (json['eta_id'] as num).toInt(),
    );
