import 'package:flutter/material.dart';

import 'model/database/database.dart';
import 'model/song.dart';
import 'model/listed_song.dart';
import 'view/menu_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CodexDatabase database = CodexDatabase.get();
  await database.insertSong(Song(title: 'A', writer: 'B', lyrics: 'C', liked: false));
  await database.insertSong(Song(title: 'D', writer: 'E', lyrics: 'F', liked: false));
  await database.insertSong(Song(title: 'G', writer: 'H', lyrics: 'I', liked: false));
  ListedSong ls = ListedSong.instance;
  ListedSong.setLists(await database.getAllSongs(), await database.getAllLikedSongs());

  for (Song song in ls.songs) {
    print('song: ${song.title}');
  }
  print('--');
  for (Song song in ls.likedSongs){
    print('liked: ${song.title}');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Codex Woltiensis Demo',
      home: MyHomePage(),
    );
  }
}
