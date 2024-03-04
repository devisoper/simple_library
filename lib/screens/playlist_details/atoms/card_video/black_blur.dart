import 'package:flutter/material.dart';

class BlackBlur extends StatelessWidget {
  const BlackBlur({super.key});

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(.7),
            ],
          ),
        ),
      );
}
