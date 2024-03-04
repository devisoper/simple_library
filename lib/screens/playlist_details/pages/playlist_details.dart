import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_library/models/playlist.dart';
import 'package:simple_library/providers/playlist_provider.dart';
import 'package:simple_library/screens/playlist_details/molecules/header/bottom.dart';
import 'package:simple_library/screens/playlist_details/molecules/header/splash_block.dart';

import '../atoms/button_back.dart';
import '../organisms/bottom_menu.dart';
import '../organisms/playlist_videos.dart';

class PlaylistDetails extends StatefulWidget {
  const PlaylistDetails({required Playlist playlist, super.key}) : _playlist = playlist;

  final Playlist _playlist;

  @override
  State<PlaylistDetails> createState() => _PlaylistDetailsState();
}

class _PlaylistDetailsState extends State<PlaylistDetails> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (_) => PlaylistProvider(widget._playlist),
        child: Builder(
          builder: (context) => const Scaffold(
            body: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  child: SplashBlock(),
                ),
                Positioned.fill(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Bottom(),
                        PlaylistVideos(),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  bottom: 16,
                  child: BottomMenu(),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: ButtonBack(),
                ),
              ],
            ),
          ),
        ),
      );
}
