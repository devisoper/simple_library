import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';
import 'package:simple_library/models/video.dart';
import 'package:simple_library/providers/playlist_provider.dart';

import 'card_video.dart';

class PlaylistVideos extends StatefulWidget {
  const PlaylistVideos({super.key});

  @override
  State<PlaylistVideos> createState() => _PlaylistVideosState();
}

class _PlaylistVideosState extends State<PlaylistVideos> {
  late final _provider = Provider.of<PlaylistProvider>(context, listen: false);

  int _draggingElementIndex = -1;

  @override
  Widget build(BuildContext context) => Consumer<PlaylistProvider>(
        builder: (_, state, __) => ReorderableGridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          onReorder: _onReorder,
          onDragUpdate: _onDragUpdate,
          dragWidgetBuilder: _dragWidgetBuilder,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 8,
            mainAxisExtent: 300,
          ),
          itemCount: state.playlist.videos.length,
          itemBuilder: (BuildContext context, int index) => _buildCardVideo(
            state.playlist.videos[index],
            isDragging: index == _draggingElementIndex,
          ),
        ),
      );

  Widget _buildCardVideo(Video video, {required bool isDragging}) => CardVideo(
        key: ValueKey(video.id.toString()),
        video: video,
        isDragging: isDragging,
      );

  void _onReorder(int oldIndex, int newIndex) {
    _provider.changeVideoOrder(oldIndex, newIndex);
    setState(() => _draggingElementIndex = -1);
  }

  void _onDragUpdate(int index, Offset offset1, Offset offset2) =>
      setState(() => _draggingElementIndex = index);

  Widget _dragWidgetBuilder(int index, Widget child) => _buildCardVideo(
        _provider.playlist.videos[index],
        isDragging: index == _draggingElementIndex,
      );
}
