import 'package:flutter/material.dart';

import 'package:codex_woltiensis_demo/model/database/database.dart';
import 'package:codex_woltiensis_demo/model/listed_song.dart';
import 'package:codex_woltiensis_demo/view/menu_page.dart';

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
