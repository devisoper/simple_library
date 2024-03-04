import 'package:flutter/material.dart';
import 'package:simple_library/screens/playlist_details/atoms/more_options/button_option.dart';

class MoreArchive extends StatelessWidget {
  const MoreArchive({super.key});

  @override
  Widget build(BuildContext context) => const ButtonOption(
        label: 'Archive',
        iconAsset: 'assets/icons/archive.png',
        tintColor: null,
      );
}
