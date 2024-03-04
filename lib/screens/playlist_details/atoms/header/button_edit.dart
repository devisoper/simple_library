import 'package:flutter/material.dart';
import 'package:simple_library/resources/sizes.dart';
import 'package:simple_library/widgets/common/button_transparent.dart';

class ButtonEdit extends StatelessWidget {
  const ButtonEdit({super.key});

  @override
  Widget build(BuildContext context) => ButtonTransparent(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons/edit.png',
          width: buttonIconSize,
          height: buttonIconSize,
        ),
      );
}
