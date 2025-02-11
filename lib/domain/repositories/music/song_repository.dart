import 'package:dart_either/dart_either.dart';
import 'package:music_app/domain/entities/music/song.dart';
import 'package:music_app/domain/failures/failure.dart';

abstract class SongRepository {
  Future<Either<Failure, List<Song>>> retrieveSongsMock();
}
