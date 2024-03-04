import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSave extends StatelessWidget {
  const ButtonSave({super.key});

  @override
  Widget build(BuildContext context) => CupertinoButton(
        child: Text(
          'Save',
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        onPressed: () => _popModal(context),
      );

  void _popModal(BuildContext context) => Navigator.pop(context);
}
