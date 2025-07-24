import 'package:shop_me/features/home/data/models/media_model.dart';

class MediaEntity {
  final String caption;
  final String copyright;
  final String imageUrl;
  final int height;
  final int width;

  MediaEntity({
    required this.caption,
    required this.copyright,
    required this.imageUrl,
    required this.height,
    required this.width,
  });

  factory MediaEntity.fromModel(MediaModel model) {
    return MediaEntity(
      caption: model.caption,
      copyright: model.copyright,
      imageUrl: model.mediaMetadata.last.url,
      height: model.mediaMetadata.last.height,
      width: model.mediaMetadata.last.width,
    );
  }
}
