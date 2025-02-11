import 'package:music_app/domain/entities/music/song_color.dart';
import 'package:music_app/domain/entities/unique_id.dart';

class Song {
  SongId songId;
  String title;
  String youtubeUrl;
  SongColor songColor;

  Song(
      {required this.songId,
      required this.title,
      required this.youtubeUrl,
      required this.songColor});
}
