import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class CustomMarkdownViewerTheme{
  static final String? _font = GoogleFonts.inter().fontFamily;
  static MarkdownStyleSheet get markdownViewerTheme{
    return MarkdownStyleSheet(
      textAlign: WrapAlignment.start,
      h1: TextStyle(fontSize: 24, fontFamily: _font),
      h2: TextStyle(fontSize: 22, fontFamily: _font),
      h3: TextStyle(fontSize: 20, fontFamily: _font),
      h4: TextStyle(fontSize: 18, fontFamily: _font),
      h5: TextStyle(fontSize: 16, fontFamily: _font),
      h6: TextStyle(fontSize: 14, fontFamily: _font),
      p: TextStyle(fontSize: 12, fontFamily: _font),
      blockquote: TextStyle(fontSize: 12, fontFamily: _font),
      code: TextStyle(fontSize: 12, fontFamily: _font),
      em: TextStyle(fontSize: 12, fontFamily: _font),
      strong: TextStyle(fontSize: 12, fontFamily: _font),
      del: TextStyle(fontSize: 12, fontFamily: _font),
      textScaleFactor: 1.0,
    );
  }
}