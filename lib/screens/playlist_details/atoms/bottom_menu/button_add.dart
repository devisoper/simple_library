import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:provider/provider.dart';
import 'package:simple_library/providers/playlist_provider.dart';
import 'package:simple_library/screens/playlist_details/molecules/add_playlist/header.dart';
import 'package:simple_library/screens/playlist_details/organisms/add_playlist_view.dart';

import '../../../../resources/sizes.dart';
import '../../../../widgets/common/sheet_indicator.dart';

class ButtonAdd extends StatelessWidget {
  const ButtonAdd({super.key});

  @override
  Widget build(BuildContext context) => Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff7F00FF), Color(0xffDF00FD)]),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: () => _showAddPlaylist(context),
          icon: Image.asset(
            'assets/icons/add.png',
            width: buttonIconSize,
            height: buttonIconSize,
            color: const Color(0xffFBFBFB),
          ),
        ),
      );

  void _showAddPlaylist(BuildContext context) {
    final provider = Provider.of<PlaylistProvider>(context, listen: false);

    showModalBottomSheet(
      context: context,
      builder: (context) => SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              const SheetIndicator(),
              const Gutter(),
              const Header(),
              AddPlaylistView(playlist: provider.playlist),
            ],
          ),
        ),
      ),
    );
  }
}
