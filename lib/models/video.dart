import 'package:collection/collection.dart';

class Video {
  Video({
    required this.id,
    required this.thumbnail,
    required this.favoriteCount,
    required this.createdAt,
    required this.landmark,
    required this.hashtagsPlain,
  });

  factory Video.fromJson(dynamic json) => Video(
        id: json['id'],
        thumbnail: json['thumbnail'],
        favoriteCount: json['favorite_count'],
        createdAt: DateTime.fromMillisecondsSinceEpoch(json['created_at']),
        hashtagsPlain: json['hashtags_plain'],
        landmark: VideoLandmark.values.firstWhereOrNull((e) => e.id == json['landmark']),
      );

  final int id;
  final String thumbnail;
  final int favoriteCount;
  final DateTime createdAt;
  final String hashtagsPlain;

  final VideoLandmark? landmark;
}

enum VideoLandmark {
  mostLiked('most_liked', 'Most Liked'),
  mostViewed('most_viewed', 'Most Viewed');

  const VideoLandmark(this.id, this.label);

  final String id;
  final String label;
}
