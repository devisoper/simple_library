import 'package:flutter/material.dart';

class ButtonTransparent extends StatelessWidget {
  const ButtonTransparent({required VoidCallback onPressed, required Widget icon, super.key})
      : _onPressed = onPressed,
        _icon = icon;

  final VoidCallback _onPressed;
  final Widget _icon;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: InkWell(
          onTap: _onPressed,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: _icon,
          ),
        ),
      );
}
