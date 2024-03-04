import 'package:flutter/material.dart';
import 'package:simple_library/themes/colors.dart';

class AppColorBlur extends StatelessWidget {
  const AppColorBlur({super.key});

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [primaryColor, Colors.black.withOpacity(.65)],
          ),
        ),
      );
}
