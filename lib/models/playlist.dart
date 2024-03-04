import 'package:collection/collection.dart';
import 'package:simple_library/models/video.dart';

class Playlist {
  Playlist({
    required this.id,
    required this.title,
    required this.splash,
    required this.videoCount,
    required this.viewCount,
    required this.totalDuration,
    required this.visibility,
    required this.videos,
  });

  factory Playlist.fromJson(dynamic json) => Playlist(
        id: json['id'],
        title: json['title'],
        splash: json['splash'],
        videoCount: json['video_count'],
        viewCount: json['view_count'],
        totalDuration: Duration(seconds: json['total_duration_in_seconds']),
        visibility: PlaylistVisibility.values.firstWhereOrNull((e) => e.id == json['visibility']) ??
            PlaylistVisibility.private,
        videos: (json['videos'] as List).map(Video.fromJson).toList(),
      );

  final int id;
  final String title;
  final String splash;
  final int videoCount;
  final int viewCount;
  final Duration totalDuration;
  final PlaylistVisibility visibility;

  final List<Video> videos;
}

enum PlaylistVisibility {
  private('private', 'Private'),
  public('public', 'Public');

  const PlaylistVisibility(this.id, this.label);

  final String id;
  final String label;
}
