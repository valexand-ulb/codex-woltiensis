import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/services.dart' show rootBundle;

class MarkdownViewer extends StatefulWidget {
  final String filePath;
  const MarkdownViewer({super.key, required this.filePath});

  @override
  _MarkdownViewerState createState() => _MarkdownViewerState();
}

class _MarkdownViewerState extends State<MarkdownViewer> {
  late Future<String> _markdownFileContent;
  late MarkdownStyleSheet _styleSheet;

  @override
  void initState() {
    super.initState();
    _markdownFileContent = rootBundle.loadString(widget.filePath);
    _styleSheet = MarkdownStyleSheet(
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Titre")),
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