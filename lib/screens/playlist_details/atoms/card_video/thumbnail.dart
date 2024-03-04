import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Thumbnail extends StatelessWidget {
  const Thumbnail({required String thumbnail, super.key}) : _thumbnail = thumbnail;

  final String _thumbnail;

  @override
  Widget build(BuildContext context) => CachedNetworkImage(
        imageUrl: _thumbnail,
        fit: BoxFit.cover,
      );
}
