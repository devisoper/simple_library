import 'package:simple_library/test/playlist_generator.dart';

import '../models/playlist.dart';

Future<List<Playlist>> getPlaylists() async {
  await Future.delayed(const Duration(seconds: 1));

  return generatePlaylists().map(Playlist.fromJson).toList();
}
