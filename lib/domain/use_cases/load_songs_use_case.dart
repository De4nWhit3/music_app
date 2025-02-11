import 'package:dart_either/dart_either.dart';
import 'package:music_app/domain/entities/music/song.dart';
import 'package:music_app/domain/failures/failure.dart';
import 'package:music_app/domain/repositories/music/song_repository.dart';

class LoadSongsUseCase {
  SongRepository songRepository;

  LoadSongsUseCase({required this.songRepository});

  Future<Either<Failure, List<Song>>> readSongsFromMock() async {
    try {
      final result = await songRepository.retrieveSongsMock();
      return result.fold(
        ifLeft: (value) => Left(ServerFailure()),
        ifRight: (value) => Right(value),
      );
    } catch (e) {
      return Left(ServerFailure(stackTrace: e.toString()));
    }
  }
}
