import 'package:flutter/material.dart';

import '../../../../resources/sizes.dart';

class ButtonPerson extends StatelessWidget {
  const ButtonPerson({super.key});

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons/person.png',
          width: buttonIconSize,
          height: buttonIconSize,
        ),
      );
}
