import 'package:flutter/material.dart';

import 'song_card.dart';

class LikedPage extends StatelessWidget {
  final int _numOfCards;

  const LikedPage(
    this._numOfCards, {
    super.key,
  });

  List<Widget> _buildGridCards(int count) {
    List<Widget> cards = List.generate(
      count,
      (int index) {
        return const SongCard('Title', 'Writter');
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
        children: _buildGridCards(_numOfCards),
      ),
    );
  }
}
