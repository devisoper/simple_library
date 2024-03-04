import 'package:flutter/material.dart';

class BlackBlur extends StatelessWidget {
  const BlackBlur({super.key});

  @override
  Widget build(BuildContext context) => Container(
        height: 200,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black,
              Colors.transparent,
            ],
          ),
        ),
      );
}
