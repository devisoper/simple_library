import 'package:flutter/material.dart';
import 'package:simple_library/screens/playlist_details/atoms/more_options/button_option.dart';

class MoreDelete extends StatelessWidget {
  const MoreDelete({super.key});

  @override
  Widget build(BuildContext context) => ButtonOption(
        label: 'Remove',
        iconAsset: 'assets/icons/remove.png',
        tintColor: Theme.of(context).colorScheme.error,
      );
}
