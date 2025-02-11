part of 'songs_cubit.dart';

sealed class SongsCubitState extends Equatable {
  const SongsCubitState();

  @override
  List<Object> get props => [];
}

final class SongsInitialState extends SongsCubitState {}

final class SongsLoadingState extends SongsCubitState {}

final class SongsErrorState extends SongsCubitState {
  final String errorMessage;

  const SongsErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

final class SongsLoadedState extends SongsCubitState {
  final List<Song> songs;

  const SongsLoadedState({required this.songs});

  @override
  List<Object> get props => [songs];
}
