import 'package:flutter/material.dart';
import 'package:simple_library/screens/playlist_details/utils/format_counter.dart';

import '../../../../resources/sizes.dart';
import '../../../../widgets/common/margin_small_hor.dart';

class FavCount extends StatelessWidget {
  const FavCount({required int favCount, super.key}) : _favCount = favCount;

  final int _favCount;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          const _IconHeart(),
          const MarginSmallHor(),
          _CounterText(favCount: _favCount),
        ],
      );
}

class _IconHeart extends StatelessWidget {
  const _IconHeart();

  @override
  Widget build(BuildContext context) => Image.asset(
        'assets/icons/heart.png',
        width: smallIconSize,
        height: smallIconSize,
      );
}

class _CounterText extends StatelessWidget {
  const _CounterText({required int favCount}) : _favCount = favCount;

  final int _favCount;

  @override
  Widget build(BuildContext context) => Text(
        formatCounter(_favCount),
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      );
}
