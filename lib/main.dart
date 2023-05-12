import 'package:flutter/material.dart';

import 'model/database/database.dart';
import 'model/song.dart';
import 'model/listed_song.dart';
import 'view/menu_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CodexDatabase database = CodexDatabase.get();
  ListedSong ls = ListedSong.instance;
  await ls.setLists();


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
