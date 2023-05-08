const String tableSongs = 'songs';

class SongField{
  static final List<String> values = [
    id, title, writer, lyrics
  ];

  static const String id = '_id';
  static const String title = 'title';
  static const String writer = 'writer';
  static const String lyrics = 'lyrics';
}

class Song{
  final int? id;
  final String title;
  final String writer;
  final String? lyrics;

  const Song({this.id,
    required this.title,
    required this.writer,
    this.lyrics
  });
}