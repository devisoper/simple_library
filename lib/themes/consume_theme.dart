import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData getAppTheme() => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: primaryColor,
        error: const Color(0xffFF4D4D),
      ),
      useMaterial3: true,
      fontFamily: 'SfProDisplay',
    );
