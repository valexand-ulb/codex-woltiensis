import 'package:flutter/material.dart';

import 'package:codex_woltiensis_demo/model/database/database.dart';
import 'package:codex_woltiensis_demo/model/listed_song.dart';
import 'package:codex_woltiensis_demo/view/menu_page.dart';
import 'package:codex_woltiensis_demo/model/theme.dart';

import 'model/song.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CodexDatabase database = CodexDatabase.get();
  ListedSong ls = ListedSong.instance;

  database.insertSong(Song(
    title: 'Test1',
    writer: 'writter 1',
    lyrics: 'Test',
    liked: false,)
  );

  database.insertSong(Song(
    title: 'Test2',
    writer: 'writter 2',
    lyrics: 'Test',
    liked: false,)
  );

  database.insertSong(Song(
    title: 'Test3',
    writer: 'writter 3',
    lyrics: 'Test',
    liked: false,)
  );

  await ls.setLists();


  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codex Woltiensis Demo',
      theme: CustomTheme.themeDataLight,
      home: const MyHomePage(),
    );
  }
}
