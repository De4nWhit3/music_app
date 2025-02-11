import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/domain/entities/music/song.dart';
import 'package:music_app/domain/use_cases/load_songs_use_case.dart';

part 'songs_state.dart';

class SongsCubit extends Cubit<SongsCubitState> {
  SongsCubit({required this.loadSongsUseCase}) : super(SongsInitialState());

  final LoadSongsUseCase loadSongsUseCase;

  // get songs via use case
  Future<void> readSongs() async {
    emit(SongsLoadingState());
    try {
      final songs = await loadSongsUseCase.readSongsFromMock();

      songs.fold(
        ifLeft: (_) {
          emit(const SongsErrorState(
              errorMessage: 'Oops, something went wrong! Please try again.'));
        },
        ifRight: (value) {
          emit(SongsLoadedState(songs: value));
        },
      );
    } catch (e) {
      emit(const SongsErrorState(
          errorMessage: 'Oopsie, something went wrong! Please try again.'));
    }
  }
}
