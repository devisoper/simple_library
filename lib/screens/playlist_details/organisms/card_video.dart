import 'package:flutter/material.dart';
import 'package:simple_library/models/video.dart';
import 'package:simple_library/screens/playlist_details/atoms/card_video/black_blur.dart';
import 'package:simple_library/screens/playlist_details/atoms/card_video/hashtags.dart';
import 'package:simple_library/screens/playlist_details/atoms/card_video/landmark.dart';
import 'package:simple_library/screens/playlist_details/molecules/card_video/video_metadata.dart';
import 'package:simple_library/widgets/common/general_blur.dart';
import 'package:simple_library/widgets/common/margin_small_vert.dart';

import '../atoms/card_video/thumbnail.dart';

class CardVideo extends StatelessWidget {
  const CardVideo({required Video video, required bool isDragging, super.key})
      : _video = video,
        _isDragging = isDragging;

  final Video _video;
  final bool _isDragging;

  @override
  Widget build(BuildContext context) {
    final child = Column(
      children: [
        Expanded(
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Stack(
              children: [
                Positioned.fill(child: Thumbnail(thumbnail: _video.thumbnail)),
                const Positioned.fill(child: BlackBlur()),
                Positioned(
                  left: 8,
                  top: 8,
                  right: 0,
                  child: _LandMarkHolder(video: _video),
                ),
                Positioned(
                  left: 8,
                  right: 8,
                  bottom: 8,
                  child: Metadata(video: _video),
                ),
              ],
            ),
          ),
        ),
        const MarginSmallVert(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Hashtags(hashtagsPlain: _video.hashtagsPlain),
        ),
      ],
    );

    if (_isDragging) {
      return Transform.rotate(
        angle: .1,
        child: GeneralBlur(
          radius: 16,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          ),
        ),
      );
    }

    return child;
  }
}

class _LandMarkHolder extends StatelessWidget {
  const _LandMarkHolder({required Video video}) : _video = video;

  final Video _video;

  @override
  Widget build(BuildContext context) {
    // Add a Row to avoid 'Landmark' expand
    // That way we support RTL devices
    return Row(
      children: [
        Landmark(landmark: _video.landmark),
      ],
    );
  }
}
