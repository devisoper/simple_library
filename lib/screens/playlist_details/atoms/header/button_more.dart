import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:simple_library/resources/sizes.dart';
import 'package:simple_library/screens/playlist_details/molecules/more_options/more_options_actions.dart';
import 'package:simple_library/widgets/common/button_transparent.dart';
import 'package:simple_library/widgets/common/sheet_indicator.dart';

class ButtonMore extends StatelessWidget {
  const ButtonMore({super.key});

  @override
  Widget build(BuildContext context) => ButtonTransparent(
        onPressed: () => _showMoreOptions(context),
        icon: Image.asset(
          'assets/icons/more.png',
          width: buttonIconSize,
          height: buttonIconSize,
        ),
      );

  void _showMoreOptions(BuildContext context) => showModalBottomSheet(
        context: context,
        builder: (context) => const SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SheetIndicator(),
                Gutter(),
                MoreOptionsActions(),
              ],
            ),
          ),
        ),
      );
}
