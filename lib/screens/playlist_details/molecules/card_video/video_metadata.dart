import 'package:flutter/material.dart';
import 'package:simple_library/models/video.dart';
import 'package:simple_library/screens/playlist_details/atoms/card_video/fav_count.dart';

import '../../atoms/card_video/text_date.dart';

class Metadata extends StatelessWidget {
  const Metadata({required Video video, super.key}) : _video = video;

  final Video _video;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextDate(createdAt: _video.createdAt),
          FavCount(favCount: _video.favoriteCount),
        ],
      );
}
