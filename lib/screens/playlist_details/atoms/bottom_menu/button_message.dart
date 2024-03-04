import 'package:flutter/material.dart';

import '../../../../resources/sizes.dart';

class ButtonMessage extends StatelessWidget {
  const ButtonMessage({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons/message.png',
          width: buttonIconSize,
          height: buttonIconSize,
        ),
      );
}
