import 'dart:ui';

import 'package:flutter/material.dart';

class GeneralBlur extends StatelessWidget {
  const GeneralBlur({required double radius, required Widget child, super.key})
      : _radius = radius,
        _child = child;

  final double _radius;
  final Widget _child;

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(_radius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 16, sigmaX: 16),
          child: _child,
        ),
      );
}
