import 'package:dart_either/dart_either.dart';
import 'package:music_app/domain/entities/music/song.dart';
import 'package:music_app/domain/entities/music/song_color.dart';
import 'package:music_app/domain/entities/unique_id.dart';
import 'package:music_app/domain/failures/failure.dart';
import 'package:music_app/domain/repositories/music/song_repository.dart';

class SongRepositoryImpl implements SongRepository {
  @override
  Future<Either<Failure, List<Song>>> retrieveSongsMock() async {
    // return mock data here for youtube songs
    List<Song> songs = [
      Song(
        songId: SongId(),
        title: 'Lyrics - "Golden Touch" by Jaxson Gamble',
        youtubeUrl: 'https://youtu.be/Q9kQI-GrgiU?si=jkXdWVfEUcFrpm85',
        songColor: SongColor(colorId: 0),
      ),
      Song(
        songId: SongId(),
        title: 'Real Good Feeling - Oh The Larceny (LYRICS)',
        youtubeUrl: 'https://youtu.be/yKxYDRrWeHM?si=8wCeEm60P4P5k-5K',
        songColor: SongColor(colorId: 1),
      ),
      Song(
        songId: SongId(),
        title: 'Paul Stanley - Live to Win (Extended + Lyrics)',
        youtubeUrl: 'https://youtu.be/gyEyvEOYLro?si=DKb26QrJ0D8XjxXg',
        songColor: SongColor(colorId: 2),
      ),
      Song(
        songId: SongId(),
        title: 'Smash Into Pieces - Superstar In Me (LYRIC VIDEO)',
        youtubeUrl: 'https://youtu.be/EdwqJqqV-jY?si=GDSPz_SN5Pjz0l0Y',
        songColor: SongColor(colorId: 0),
      ),
      Song(
        songId: SongId(),
        title: 'Fall Out Boy - THE PHOENIX (Animated Lyric Video)',
        youtubeUrl: 'https://youtu.be/5JqY-6q-RNA?si=zjBSsPSeEvUWAjS8',
        songColor: SongColor(colorId: 1),
      ),
      Song(
        songId: SongId(),
        title: 'Adelitas Way - Invincible(lyrics) HQ',
        youtubeUrl: 'https://youtu.be/H3maemHRKjw?si=FB2FXol9eWVaMiuN',
        songColor: SongColor(colorId: 2),
      ),
      Song(
        songId: SongId(),
        title: 'Zack Hemsey - "Don\'t Get In My Way" Lyrics Video',
        youtubeUrl: 'https://youtu.be/ElPlERu_hzc?si=ULYd688J7CiCaXhB',
        songColor: SongColor(colorId: 0),
      ),
      Song(
        songId: SongId(),
        title: 'Sixx A.M. --life is beautiful lyrics',
        youtubeUrl: 'https://youtu.be/xjX2KYuAJcA?si=f5Obj2tz7_sCRqt1',
        songColor: SongColor(colorId: 1),
      ),
      Song(
        songId: SongId(),
        title: 'Trapt - Headstrong Lyrics HQ',
        youtubeUrl: 'https://youtu.be/kzA1vHt7dm4?si=V9zFC9dUTfHXuhHB',
        songColor: SongColor(colorId: 2),
      ),
      Song(
        songId: SongId(),
        title:
            'Karliene - Become The Beast [LYRICS] - A Hannibal Fan Song #SaveHannibal',
        youtubeUrl: 'https://youtu.be/d33uKj28nZI?si=xugEI6dJUpuOQ6Ml',
        songColor: SongColor(colorId: 0),
      ),
      Song(
        songId: SongId(),
        title: 'Legends Never Die (Lyrics) Ft. Against The Current',
        youtubeUrl: 'https://youtu.be/1fOBgosDo7s?si=ZXLOvCtVcCrkk2p3',
        songColor: SongColor(colorId: 1),
      ),
      Song(
        songId: SongId(),
        title: 'Born for This By The Score Lyrics',
        youtubeUrl: 'https://youtu.be/hRxyvtvxC9c?si=kIiE6gPm-VnXpvj5',
        songColor: SongColor(colorId: 2),
      ),
      Song(
        songId: SongId(),
        title: 'Godsmack - I Stand Alone (Lyrics)',
        youtubeUrl: 'https://youtu.be/kZ_tiz6DJFQ?si=ckiJOpXmIJ3dbysC',
        songColor: SongColor(colorId: 0),
      ),
      Song(
        songId: SongId(),
        title: 'You\'re Going Down - Sick Puppies Lyrics 1080p',
        youtubeUrl: 'https://youtu.be/SsOc1__b9Gw?si=F7bCugSsUWlF1JoQ',
        songColor: SongColor(colorId: 1),
      ),
      Song(
        songId: SongId(),
        title: 'Walk Alone (The Song) Fearless Motivation',
        youtubeUrl: 'https://youtu.be/syEDu6AihFs?si=QvhXaU07iWzOaez4',
        songColor: SongColor(colorId: 2),
      ),
      Song(
        songId: SongId(),
        title:
            'Die For You ft. Grabbitz // Official Music Video // VALORANT Champions 2021',
        youtubeUrl: 'https://youtu.be/h7MYJghRWt0?si=81VpqJn2BkdPE_0p',
        songColor: SongColor(colorId: 0),
      ),
    ];

    return Future.delayed(
      const Duration(milliseconds: 300),
      () => Right(songs),
    );
  }
}
