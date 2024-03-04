import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:simple_library/resources/sizes.dart';
import 'package:simple_library/screens/playlist_details/molecules/header/action_buttons.dart';

import 'metadata_block.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) => const SizedBox(
        height: playlistHeaderHeight,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MetadataBlock(),
                  Gutter(),
                  ActionButtons(),
                ],
              ),
            ],
          ),
        ),
      );
}
