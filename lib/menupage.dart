import 'package:flutter/material.dart';

import 'cardsgrid.dart';

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('Codex Woltiensis'),
        leading : IconButton(
          icon : const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed:(){
            print('Menu button');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              semanticLabel: 'Search',
            ),
            onPressed: (){
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              semanticLabel: 'Filter',
            ),
            onPressed: (){
              print('Filter button');
            },
          ),
        ],

      ),
      body: const CardsGrid(100),
    );
  }
}
