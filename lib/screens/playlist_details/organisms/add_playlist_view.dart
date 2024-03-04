import 'package:flutter/material.dart';
import 'package:simple_library/models/playlist.dart';
import 'package:simple_library/screens/playlist_details/pages/add_playlist/page_details.dart';
import 'package:simple_library/screens/playlist_details/pages/add_playlist/page_privacy.dart';

import '../pages/add_playlist/page_content.dart';

class AddPlaylistView extends StatelessWidget {
  const AddPlaylistView({required Playlist playlist, super.key}) : _playlist = playlist;

  final Playlist _playlist;

  @override
  Widget build(BuildContext context) => Expanded(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(icon: Text('Content', style: TextStyle(fontWeight: FontWeight.bold))),
                  Tab(icon: Text('Details', style: TextStyle(fontWeight: FontWeight.bold))),
                  Tab(icon: Text('Privacy', style: TextStyle(fontWeight: FontWeight.bold))),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    PageContent(playlist: _playlist),
                    const PageDetails(),
                    const PagePrivacy(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
