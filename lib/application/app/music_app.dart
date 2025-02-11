import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/core/routes/routes.dart';
import 'package:music_app/core/services/theme_service.dart';
import 'package:music_app/core/themes/default_dark_theme.dart';
import 'package:music_app/core/themes/default_light_theme.dart';
import 'package:music_app/data/repositories_impls/music/song_repository_impl.dart';
import 'package:music_app/domain/repositories/music/song_repository.dart';
import 'package:provider/provider.dart';

class MusicAppWrapper extends StatelessWidget {
  const MusicAppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<SongRepository>(
      create: (context) => SongRepositoryImpl(),
      child: ChangeNotifierProvider<ThemeService>(
        create: (context) => ThemeService(),
        child: const MusicApp(),
      ),
    );
  }
}

class MusicApp extends StatelessWidget {
  const MusicApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp.router(
          theme: DefaultLightTheme.defaultLightTheme,
          darkTheme: DefaultDarkTheme.defaultDarkTheme,
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          routerConfig: routes,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
