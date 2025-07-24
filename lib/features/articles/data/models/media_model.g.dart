// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaModel _$MediaModelFromJson(Map<String, dynamic> json) => MediaModel(
  type: json['type'] as String,
  subtype: json['subtype'] as String,
  caption: json['caption'] as String,
  copyright: json['copyright'] as String,
  approvedForSyndication: (json['approved_for_syndication'] as num).toInt(),
  mediaMetadata:
      (json['media-metadata'] as List<dynamic>)
          .map((e) => MediaMetadataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);
