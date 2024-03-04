import 'package:flutter/material.dart';
import 'package:simple_library/resources/sizes.dart';
import 'package:simple_library/screens/playlist_details/atoms/header/app_color_blur.dart';
import 'package:simple_library/screens/playlist_details/atoms/header/black_blur.dart';

import '../../atoms/header/splash.dart';

class SplashBlock extends StatelessWidget {
  const SplashBlock({super.key});

  @override
  Widget build(BuildContext context) => const SizedBox(
        height: playlistHeaderHeight * 1.25,
        child: Stack(
          children: [
            Positioned.fill(child: Splash()),
            Positioned.fill(child: AppColorBlur()),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: BlackBlur(),
            ),
          ],
        ),
      );
}
