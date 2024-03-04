import 'package:flutter/material.dart';

import '../../../models/playlist.dart';
import '../atoms/playlist_tile.dart';

class Playlists extends StatelessWidget {
  const Playlists({required List<Playlist> playlists, super.key}) : _playlists = playlists;

  final List<Playlist> _playlists;

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: (context, index) => PlaylistTile(playlist: _playlists[index]),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: _playlists.length,
      );
}
