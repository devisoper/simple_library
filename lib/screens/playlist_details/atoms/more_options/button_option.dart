import 'package:flutter/material.dart';
import 'package:simple_library/resources/sizes.dart';
import 'package:simple_library/widgets/common/margin_small_vert.dart';

class ButtonOption extends StatelessWidget {
  const ButtonOption({
    required String label,
    required String iconAsset,
    required Color? tintColor,
    super.key,
  })  : _label = label,
        _iconAsset = iconAsset,
        _tintColor = tintColor;

  final String _label;
  final String _iconAsset;
  final Color? _tintColor;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            width: 70,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.05),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              _iconAsset,
              width: buttonIconSize,
              height: buttonIconSize,
              color: _tintColor,
            ),
          ),
          const MarginSmallVert(),
          _Label(label: _label, tintColor: _tintColor),
        ],
      );
}

class _Label extends StatelessWidget {
  const _Label({required String label, required Color? tintColor})
      : _label = label,
        _tintColor = tintColor;

  final String _label;
  final Color? _tintColor;

  @override
  Widget build(BuildContext context) => Text(
        _label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: _tintColor,
            ),
      );
}
