import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:codex_woltiensis_demo/model/song.dart';

class MarkdownViewer extends StatefulWidget {
  final Song song;
  const MarkdownViewer({super.key, required this.song});

  @override
  _MarkdownViewerState createState() => _MarkdownViewerState();
}

class _MarkdownViewerState extends State<MarkdownViewer> {
  late Future<String> _markdownFileContent;
  late MarkdownStyleSheet _styleSheet;

  @override
  void initState() {
    print(widget.song.filepath);
    super.initState();
    _markdownFileContent = rootBundle.loadString('assets/songs/${widget.song.filepath}.md');
    _styleSheet = MarkdownStyleSheet(
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(widget.song.title)),
      body: FutureBuilder(
        future: _markdownFileContent,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data!,
              styleSheet: _styleSheet,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}