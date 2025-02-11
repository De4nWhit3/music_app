import 'package:flutter/material.dart';
import 'package:music_app/domain/entities/music/song.dart';

class SongsLoaded extends StatelessWidget {
  final List<Song> songs;
  const SongsLoaded({super.key, required this.songs});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: songs.length,
      itemBuilder: (context, index) {
        final song = songs[index];
        return ListTile(
          title: Text(song.title),
          leading: const Icon(Icons.play_arrow),
          iconColor: song.songColor.color,
          onTap: () => debugPrint(song.title),
        );
      },
    );
  }
}
