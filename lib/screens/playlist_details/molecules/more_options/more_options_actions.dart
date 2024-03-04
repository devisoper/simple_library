import 'package:flutter/material.dart';
import 'package:simple_library/screens/playlist_details/atoms/more_options/more_archive.dart';
import 'package:simple_library/screens/playlist_details/atoms/more_options/more_delete.dart';
import 'package:simple_library/screens/playlist_details/atoms/more_options/more_edit.dart';
import 'package:simple_library/screens/playlist_details/atoms/more_options/more_share.dart';

class MoreOptionsActions extends StatelessWidget {
  const MoreOptionsActions({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MoreEdit(),
          MoreShare(),
          MoreArchive(),
          MoreDelete(),
        ],
      );
}
