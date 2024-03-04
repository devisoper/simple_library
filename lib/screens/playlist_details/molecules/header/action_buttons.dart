import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:simple_library/screens/playlist_details/atoms/header/button_edit.dart';
import 'package:simple_library/screens/playlist_details/atoms/header/button_more.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        children: [
          ButtonEdit(),
          Gutter(),
          ButtonMore(),
        ],
      );
}
