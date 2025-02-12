import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/application/pages/music/bloc/cubit/songs_cubit.dart';
import 'package:music_app/application/pages/music/view_states/songs_error.dart';
import 'package:music_app/application/pages/music/view_states/songs_loaded.dart';
import 'package:music_app/application/pages/music/view_states/songs_loading.dart';
import 'package:music_app/core/page_config/page_config.dart';
import 'package:music_app/domain/use_cases/load_songs_use_case.dart';

class MusicPageWrapper extends StatelessWidget {
  const MusicPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SongsCubit(
        loadSongsUseCase: LoadSongsUseCase(
          songRepository: RepositoryProvider.of(context),
        ),
      )..readSongs(),
      child: const MusicPage(),
    );
  }
}

class MusicPage extends StatelessWidget {
  const MusicPage({super.key});

  static final pageConfig = PageConfig(
    icon: const Icon(Icons.music_note),
    name: 'music',
    child: const MusicPageWrapper(),
    detailView: const MusicPageDetailView(),
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SongsCubit, SongsCubitState>(
      builder: (context, state) {
        if (state is SongsLoadingState) {
          return const SongsLoading();
        } else if (state is SongsLoadedState) {
          return SongsLoaded(
            songs: state.songs,
          );
        } else {
          return const SongsError();
        }
      },
    );
  }
}

class MusicPageDetailView extends StatelessWidget {
  const MusicPageDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Youtube Play functionality in progress'),
    );
  }
}
