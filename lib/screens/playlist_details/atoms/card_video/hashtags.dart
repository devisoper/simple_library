import 'package:flutter/material.dart';

class Hashtags extends StatelessWidget {
  const Hashtags({required String hashtagsPlain, super.key}) : _hashtagsPlain = hashtagsPlain;

  final String _hashtagsPlain;

  @override
  Widget build(BuildContext context) => Text(
        _hashtagsPlain,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      );
}
