
import 'package:json_annotation/json_annotation.dart';

part 'media_meta_data_model.g.dart';

@JsonSerializable(createToJson: false)
class MediaMetadataModel {
  final String url;
  final String format;
  final int height;
  final int width;

  MediaMetadataModel({
    required this.url,
    required this.format,
    required this.height,
    required this.width,
  });

  factory MediaMetadataModel.fromJson(Map<String, dynamic> json) =>
      _$MediaMetadataModelFromJson(json);
}
