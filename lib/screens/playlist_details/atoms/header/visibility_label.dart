import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_library/providers/playlist_provider.dart';

import '../../../../resources/sizes.dart';
import '../../../../widgets/common/margin_small_hor.dart';

class VisibilityLabel extends StatelessWidget {
  const VisibilityLabel({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _IconLock(),
          MarginSmallHor(),
          _Label(),
        ],
      );
}

class _IconLock extends StatelessWidget {
  const _IconLock();

  @override
  Widget build(BuildContext context) => Image.asset(
        'assets/icons/lock.png',
        width: smallIconSize,
        height: smallIconSize,
      );
}

class _Label extends StatelessWidget {
  const _Label();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PlaylistProvider>(context, listen: false);

    return Text(
      provider.playlist.visibility.label,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.onBackground.withOpacity(.7),
          ),
    );
  }
}
