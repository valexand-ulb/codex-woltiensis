import 'package:flutter/material.dart';

import '../model/song.dart';
import '../model/listed_song.dart';
import 'song_card.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({super.key});

  List<Widget> _buildGridCards(int count) {
    ListedSong ls = ListedSong.instance;
    List<Song> likedSongs = ls.likedSongs;
    List<Widget> cards = List.generate(
      count,
      (int index) {
        return SongCard(
            likedSongs[index].title,
            likedSongs[index].writer,
            likedSongs[index].liked,
        );
      },
    );
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _buildGridCards(ListedSong.instance.songs.length),
      ),
    );
  }
}
