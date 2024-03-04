import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonUploadFromDevice extends StatelessWidget {
  const ButtonUploadFromDevice({super.key});

  @override
  Widget build(BuildContext context) => CupertinoButton(
        child: Text(
          'Upload from device',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        onPressed: () {},
      );
}
