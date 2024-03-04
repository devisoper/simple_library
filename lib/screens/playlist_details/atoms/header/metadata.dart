import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_library/providers/playlist_provider.dart';
import 'package:simple_library/screens/playlist_details/utils/format_duration.dart';

class Metadata extends StatelessWidget {
  const Metadata({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlaylistProvider>(context, listen: false);

    return Text(
      _buildText(provider),
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onBackground.withOpacity(.7),
          ),
    );
  }

  String _buildText(PlaylistProvider provider) =>
      '${provider.playlist.videoCount} videos | ${formatDuration(provider.playlist.totalDuration)}';
}
