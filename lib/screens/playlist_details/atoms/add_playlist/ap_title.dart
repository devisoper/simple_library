import 'package:flutter/material.dart';

class APTitle extends StatelessWidget {
  const APTitle({super.key});

  @override
  Widget build(BuildContext context) => Text(
        'Create New Playlist',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      );
}
