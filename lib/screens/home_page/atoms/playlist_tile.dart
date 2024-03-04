import 'package:flutter/material.dart';
import 'package:simple_library/navigators/app_router.dart';
import 'package:simple_library/navigators/routes.dart';

import '../../../models/playlist.dart';

class PlaylistTile extends StatelessWidget {
  const PlaylistTile({required Playlist playlist, super.key}) : _playlist = playlist;

  final Playlist _playlist;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(_playlist.title),
        onTap: _openPlaylistDetails,
      );

  void _openPlaylistDetails() => appRouter.pushNamed(playlistDetails, extra: _playlist);
}
