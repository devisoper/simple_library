import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonCancel extends StatelessWidget {
  const ButtonCancel({super.key});

  @override
  Widget build(BuildContext context) => CupertinoButton(
        child: Text(
          'Cancel',
          style: TextStyle(color: Colors.white.withOpacity(.5)),
        ),
        onPressed: () => _popModal(context),
      );

  void _popModal(BuildContext context) => Navigator.pop(context);
}
