import 'package:flutter/cupertino.dart';
import 'package:simple_library/resources/sizes.dart';
import 'package:simple_library/widgets/common/button_transparent.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ButtonTransparent(
            onPressed: () => _closeLayout(context),
            icon: const Icon(CupertinoIcons.back, size: buttonIconSize),
          ),
        ),
      );

  void _closeLayout(BuildContext context) => Navigator.pop(context);
}
