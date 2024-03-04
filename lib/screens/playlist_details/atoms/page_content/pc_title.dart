import 'package:flutter/material.dart';

class PCTitle extends StatelessWidget {
  const PCTitle({super.key});

  @override
  Widget build(BuildContext context) => Text(
        'My content',
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      );
}
