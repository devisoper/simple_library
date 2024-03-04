import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simple_library/models/video.dart';

class VImage extends StatelessWidget {
  const VImage({required Video video, super.key}) : _video = video;

  final Video _video;

  @override
  Widget build(BuildContext context) => CachedNetworkImage(
        width: double.maxFinite,
        height: double.maxFinite,
        imageUrl: _video.thumbnail,
        fit: BoxFit.cover,
      );
}
