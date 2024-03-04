import 'package:flutter/material.dart';
import 'package:simple_library/models/video.dart';
import 'package:simple_library/screens/playlist_details/atoms/card_video/hashtags.dart';
import 'package:simple_library/screens/playlist_details/atoms/video_tile/v_duration.dart';

class Metadata extends StatelessWidget {
  const Metadata({required Video video, super.key}) : _video = video;

  final Video _video;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Hashtags(hashtagsPlain: _video.hashtagsPlain),
          const VDuration(),
        ],
      );
}
