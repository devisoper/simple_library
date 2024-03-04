import 'package:flutter/material.dart';
import 'package:simple_library/models/playlist.dart';
import 'package:simple_library/screens/playlist_details/molecules/page_content/header.dart';

class PageContent extends StatelessWidget {
  const PageContent({required Playlist playlist, super.key}) : _playlist = playlist;

  final Playlist _playlist;

  @override
  Widget build(BuildContext context) => const Column(
        children: [
          Header(),
        ],
      );
}
