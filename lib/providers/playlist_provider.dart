import 'package:flutter/material.dart';

import '../models/playlist.dart';

class PlaylistProvider extends ChangeNotifier {
  PlaylistProvider(this.playlist);

  final Playlist playlist;

  void changeVideoOrder(int oldIndex, int newIndex) {
    final oldVideo = playlist.videos[newIndex];
    final newVideo = playlist.videos[oldIndex];

    playlist.videos[newIndex] = newVideo;
    playlist.videos[oldIndex] = oldVideo;

    notifyListeners();
  }
}
