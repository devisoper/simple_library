import 'package:flutter/material.dart';
import 'package:simple_library/screens/playlist_details/atoms/add_playlist/ap_title.dart';
import 'package:simple_library/screens/playlist_details/atoms/add_playlist/button_cancel.dart';
import 'package:simple_library/screens/playlist_details/atoms/add_playlist/button_save.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonCancel(),
          APTitle(),
          ButtonSave(),
        ],
      );
}
