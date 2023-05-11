const String tableSongs = 'songs';

class SongField{
  static final List<String> values = [
    id, title, writer, lyrics, liked
  ];

  static const String id = '_id';
  static const String title = 'title';
  static const String writer = 'writer';
  static const String lyrics = 'lyrics';
  static const String liked = 'liked';
}

class Song{
  final int? id;
  final String title;
  final String writer;
  final String lyrics;
  late bool liked;

  Song({
    this.id,
    required this.title,
    required this.writer,
    required this.lyrics,
    required this.liked,
  });

  // Copy constructor -> creation of a new object needed ?
  Song copy({
    int? id,
    String? title,
    String? writer,
    String? lyrics,
    bool? liked,
  }) => Song(
    id: id ?? this.id,
    title: title ?? this.title,
    writer: writer ?? this.writer,
    lyrics: lyrics ?? this.lyrics,
    liked: liked ?? this.liked,
  );

  Map<String, Object?> toJson() => {
    SongField.id: id,
    SongField.title: title,
    SongField.writer: writer,
    SongField.lyrics: lyrics,
    SongField.liked: liked ? 1 : 0,
  };

  static Song fromJson(Map<String, Object?> json) => Song(
    id: json[SongField.id] as int,
    title: json[SongField.title] as String,
    writer: json[SongField.writer] as String,
    lyrics: json[SongField.lyrics] as String,
    liked: json[SongField.liked] == 1,
  );
}

