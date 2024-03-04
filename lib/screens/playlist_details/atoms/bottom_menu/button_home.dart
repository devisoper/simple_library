import 'package:flutter/material.dart';

import '../../../../resources/sizes.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons/home.png',
          width: buttonIconSize,
          height: buttonIconSize,
        ),
      );
}
