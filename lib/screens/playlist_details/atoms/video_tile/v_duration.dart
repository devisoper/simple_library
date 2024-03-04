import 'package:flutter/material.dart';
import 'package:simple_library/widgets/common/margin_small_hor.dart';

import '../../../../resources/sizes.dart';

class VDuration extends StatelessWidget {
  const VDuration({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        children: [
          _IconClock(),
          MarginSmallHor(),
          Text('18 min', style: TextStyle(color: _tintColor)),
        ],
      );
}

class _IconClock extends StatelessWidget {
  const _IconClock();

  @override
  Widget build(BuildContext context) => Image.asset(
        'assets/icons/clock.png',
        width: smallIconSize,
        height: smallIconSize,
        color: _tintColor,
      );
}

const _tintColor = Color(0xffB19DBA);
