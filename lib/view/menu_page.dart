import 'package:flutter/material.dart';

import 'package:codex_woltiensis_demo/view/cards_page.dart';
import 'package:codex_woltiensis_demo/view/liked_page.dart';
import 'package:codex_woltiensis_demo/view/read_page.dart';

import 'package:codex_woltiensis_demo/model/listed_song.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  _MyHomePageState();

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const CardsPage();
        break;
      case 1:
        page = const LikedPage();
        break;
      case 2:
        page = MarkdownViewer(song : ListedSong.instance.readSong);
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          body: Row(
            children: [
              NavigationRail(
                extended: constraints.maxWidth >= 800,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Leekes'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.favorite),
                    label: Text('Lievelings'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.book),
                    label: Text('Studeer'),
                  ),
                ],
                selectedIndex: selectedIndex,

                onDestinationSelected: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
              Expanded(
                  child: Container(
                    child: page,
              )),
            ],
          ),
        ),
      );
    });
  }
}
