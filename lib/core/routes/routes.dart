import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:music_app/application/pages/home/home_page.dart';
import 'package:music_app/application/pages/music/music_page.dart';

GlobalKey<NavigatorState> _globalKey =
    GlobalKey<NavigatorState>(debugLabel: '_globalKey');

final routes =
    GoRouter(initialLocation: '/home/${MusicPage.pageConfig.name}', routes: [
  ShellRoute(
      navigatorKey: _globalKey,
      builder: (context, state, child) => child,
      routes: [
        GoRoute(
          path: '/home/:tab',
          builder: (context, state) => HomePage(
              tab: state.pathParameters['tab'] ?? MusicPage.pageConfig.name),
        )
      ])
]);
