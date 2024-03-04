import 'package:flutter/material.dart';
import 'package:simple_library/navigators/app_router.dart';
import 'package:simple_library/themes/consume_theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Simple Library',
        theme: getAppTheme(),
        routerConfig: appRouter,
      );
}
