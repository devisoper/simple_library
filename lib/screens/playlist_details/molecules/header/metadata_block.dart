import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:simple_library/screens/playlist_details/atoms/header/p_title.dart';
import 'package:simple_library/screens/playlist_details/atoms/header/view_count.dart';
import 'package:simple_library/screens/playlist_details/atoms/header/visibility_label.dart';
import 'package:simple_library/widgets/common/margin_small_vert.dart';

import '../../atoms/header/metadata.dart';

class MetadataBlock extends StatelessWidget {
  const MetadataBlock({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PTitle(),
          MarginSmallVert(),
          Metadata(),
          Gutter(),
          Row(
            children: [
              VisibilityLabel(),
              Gutter(),
              ViewCount(),
            ],
          ),
        ],
      );
}
