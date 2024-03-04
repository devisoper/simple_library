import 'package:flutter/material.dart';

import '../../../../resources/sizes.dart';

class ButtonPlay extends StatelessWidget {
  const ButtonPlay({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons/play.png',
          width: buttonIconSize,
          height: buttonIconSize,
        ),
      );
}
