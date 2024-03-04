import 'package:flutter/material.dart';
import 'package:simple_library/models/video.dart';
import 'package:simple_library/screens/playlist_details/atoms/video_tile/v_image.dart';
import 'package:simple_library/screens/playlist_details/molecules/video_tile/metadata.dart';

class VTile extends StatelessWidget {
  const VTile({required Video video, super.key}) : _video = video;

  final Video _video;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          VImage(video: _video),
          Metadata(video: _video),
        ],
      );
}
