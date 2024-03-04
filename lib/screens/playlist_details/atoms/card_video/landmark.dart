import 'package:flutter/material.dart';
import 'package:simple_library/models/video.dart';
import 'package:simple_library/widgets/common/general_blur.dart';

class Landmark extends StatelessWidget {
  const Landmark({required VideoLandmark? landmark, super.key}) : _landmark = landmark;

  final VideoLandmark? _landmark;

  @override
  Widget build(BuildContext context) {
    if (_landmark == null) {
      return const SizedBox();
    }

    return GeneralBlur(
      radius: 16,
      child: Container(
        decoration: BoxDecoration(color: Colors.black.withOpacity(.5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Text(
            _landmark.label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
