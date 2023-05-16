import 'package:flutter/material.dart';

import 'package:codex_woltiensis_demo/model/song.dart';
import 'package:codex_woltiensis_demo/model/listed_song.dart';
import 'package:codex_woltiensis_demo/view/song_card.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({super.key});

  List<Widget> _buildGridCards(int count) {
    ListedSong ls = ListedSong.instance;
    List<Song> songs = ls.likedSongs;
    List<Widget> cards = List.generate(
      count,
          (int index) {
        return SongCard(songs[index]);
      },
    );
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(6.0),
              childAspectRatio: 8.0 / 10.0,
              children: _buildGridCards(ListedSong.instance.likedSongs.length),
            ),
          ),
        ],
      ),
    );
  }
}
