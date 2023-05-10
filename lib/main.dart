import 'package:flutter/material.dart';

import 'model/database/database.dart';
import 'view/menu_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CodexDatabase.get().getAllSongs();

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
