import 'package:flutter/material.dart';

import 'songcard.dart';

class CardsPage extends StatelessWidget{
  final int _numOfCards;

  const CardsPage(this._numOfCards, {super.key,});

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
          (int index) {
        return SongCard('Title', 'Writter');
      },
    );
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'filter',
            ),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],

      ),
      body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,
          children: _buildGridCards(_numOfCards),
      ),
    );
  }

}