import 'package:go_router/go_router.dart';
import 'package:simple_library/models/playlist.dart';
import 'package:simple_library/navigators/routes.dart';
import 'package:simple_library/screens/home_page/pages/home_page.dart';
import 'package:simple_library/screens/playlist_details/pages/playlist_details.dart';

final appRouter = GoRouter(
  initialLocation: '/$home',
  routes: [
    GoRoute(
      name: home,
      path: '/$home',
      builder: (_, __) => const HomePage(),
      routes: [
        GoRoute(
          name: playlistDetails,
          path: playlistDetails,
          builder: (_, state) => PlaylistDetails(playlist: state.extra as Playlist),
        ),
      ],
    ),
  ],
);
