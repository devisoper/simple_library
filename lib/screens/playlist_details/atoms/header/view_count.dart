import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_library/providers/playlist_provider.dart';

import '../../../../resources/sizes.dart';
import '../../../../widgets/common/margin_small_hor.dart';
import '../../utils/format_counter.dart';

class ViewCount extends StatelessWidget {
  const ViewCount({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        children: [
          _IconEye(),
          MarginSmallHor(),
          _CounterText(),
        ],
      );
}

class _IconEye extends StatelessWidget {
  const _IconEye();

  @override
  Widget build(BuildContext context) => Image.asset(
        'assets/icons/eye.png',
        width: smallIconSize,
        height: smallIconSize,
      );
}

class _CounterText extends StatelessWidget {
  const _CounterText();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlaylistProvider>(context, listen: false);

    return Text(
      formatCounter(provider.playlist.viewCount),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
