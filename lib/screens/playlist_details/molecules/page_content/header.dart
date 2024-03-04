import 'package:flutter/material.dart';
import 'package:simple_library/screens/playlist_details/atoms/page_content/button_upload_device.dart';
import 'package:simple_library/screens/playlist_details/atoms/page_content/pc_title.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PCTitle(),
          ButtonUploadFromDevice(),
        ],
      );
}
