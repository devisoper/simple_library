import 'package:flutter/material.dart';
import 'package:simple_library/screens/playlist_details/atoms/more_options/button_option.dart';

class MoreEdit extends StatelessWidget {
  const MoreEdit({super.key});

  @override
  Widget build(BuildContext context) => const ButtonOption(
        label: 'Edit',
        iconAsset: 'assets/icons/edit.png',
        tintColor: null,
      );
}
