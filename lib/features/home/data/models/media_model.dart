import 'package:shop_me/features/home/data/models/media_meta_data_model.dart';

import 'package:json_annotation/json_annotation.dart';

part 'media_model.g.dart';

@JsonSerializable(createToJson: false)
class MediaModel {
  final String type;
  final String subtype;
  final String caption;
  final String copyright;
  @JsonKey(name: 'approved_for_syndication')
  final int approvedForSyndication;
  @JsonKey(name: 'media-metadata')
  final List<MediaMetadataModel> mediaMetadata;

  MediaModel({
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
    required this.approvedForSyndication,
    required this.mediaMetadata,
  });

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}
