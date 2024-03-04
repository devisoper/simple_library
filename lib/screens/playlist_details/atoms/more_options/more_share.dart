import 'package:flutter/material.dart';
import 'package:simple_library/screens/playlist_details/atoms/more_options/button_option.dart';

class MoreShare extends StatelessWidget {
  const MoreShare({super.key});

  @override
  Widget build(BuildContext context) => const ButtonOption(
        label: 'Share',
        iconAsset: 'assets/icons/share.png',
        tintColor: null,
      );
}
