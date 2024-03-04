import 'package:flutter/material.dart';
import 'package:simple_library/screens/playlist_details/atoms/bottom_menu/button_add.dart';
import 'package:simple_library/screens/playlist_details/atoms/bottom_menu/button_home.dart';
import 'package:simple_library/screens/playlist_details/atoms/bottom_menu/button_message.dart';
import 'package:simple_library/screens/playlist_details/atoms/bottom_menu/button_person.dart';
import 'package:simple_library/screens/playlist_details/atoms/bottom_menu/button_play.dart';
import 'package:simple_library/widgets/common/general_blur.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) => GeneralBlur(
        radius: 32,
        child: Container(
          color: const Color(0xff110417).withOpacity(.32),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonHome(),
                ButtonPlay(),
                ButtonAdd(),
                ButtonMessage(),
                ButtonPerson(),
              ],
            ),
          ),
        ),
      );
}
