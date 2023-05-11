import 'package:flutter/material.dart';

import '../model/song.dart';
import 'song_card.dart';

class CardsPage extends StatelessWidget {
  final List<Song> songs = [
    const Song(title: 'Test1', writer: 'W1', lyrics: 'L1', liked: true),
    const Song(title: 'Test2', writer: 'W2', lyrics: 'L2', liked: false),
    const Song(title: 'Test3', writer: 'W3', lyrics: 'L3', liked: true)];


  CardsPage({super.key,});

  List<Widget> _buildGridCards(int count) {
    List<Widget> cards = List.generate(
      count,
          (int index) {
        print('liked: ${songs[index].liked}');
        return SongCard(songs[index].title, songs[index].writer, songs[index].liked);
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
        children: _buildGridCards(songs.length),
      ),
    );
  }
}
