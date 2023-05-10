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
  final String lyrics;

  const Song({
    this.id,
    required this.title,
    required this.writer,
    required this.lyrics,
  });

  // Copy constructor -> creation of a new object needed ?
  Song copy({
    int? id,
    String? title,
    String? writer,
    String? lyrics
  }) => Song(
    id: id ?? this.id,
    title: title ?? this.title,
    writer: writer ?? this.writer,
    lyrics: lyrics ?? this.lyrics,
  );

  Map<String, Object?> toJson() => {
    SongField.id: id,
    SongField.title: title,
    SongField.writer: writer,
    SongField.lyrics: lyrics,
  };

  static Song fromJson(Map<String, Object?> json) => Song(
    id: json[SongField.id] as int,
    title: json[SongField.title] as String,
    writer: json[SongField.writer] as String,
    lyrics: json[SongField.lyrics] as String,
  );
}

