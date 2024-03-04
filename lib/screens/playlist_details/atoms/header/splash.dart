import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_library/providers/playlist_provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlaylistProvider>(context, listen: false);

    return CachedNetworkImage(
      imageUrl: provider.playlist.splash,
      fit: BoxFit.cover,
    );
  }
}
