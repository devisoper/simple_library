import 'package:flutter/material.dart';
import 'package:simple_library/screens/playlist_details/utils/format_date.dart';

class TextDate extends StatelessWidget {
  const TextDate({required DateTime createdAt, super.key}) : _createdAt = createdAt;

  final DateTime _createdAt;

  @override
  Widget build(BuildContext context) => Text(
        formatDate(_createdAt),
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      );
}
