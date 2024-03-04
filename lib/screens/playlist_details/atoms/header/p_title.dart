import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_library/providers/playlist_provider.dart';

class PTitle extends StatelessWidget {
  const PTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlaylistProvider>(context, listen: false);

    return Text(
      provider.playlist.title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
