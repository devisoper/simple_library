import 'package:flutter/material.dart';
import 'package:simple_library/controllers/playlist.dart';
import 'package:simple_library/screens/home_page/atoms/get_app_bar.dart';
import 'package:simple_library/screens/home_page/organisms/playlists.dart';

import '../../../models/playlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final List<Playlist> _playlists;
  bool _isFetching = true;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: getHomeAppBar(),
        body: Stack(
          children: [
            if (_isFetching) const LinearProgressIndicator() else Playlists(playlists: _playlists),
          ],
        ),
      );

  Future<void> _initialize() async {
    final playlists = await getPlaylists();

    setState(() {
      _isFetching = false;
      _playlists = playlists;
    });
  }
}
