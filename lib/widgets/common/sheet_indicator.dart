import 'package:flutter/material.dart';

class SheetIndicator extends StatelessWidget {
  const SheetIndicator({super.key});

  @override
  Widget build(BuildContext context) => Container(
        width: 60,
        height: 5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
      );
}
