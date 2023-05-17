const String tableSongs = 'songs';

class SongField{
  static final List<String> values = [
    id, title, writer, filepath, liked
  ];

  static const String id = '_id';
  static const String title = 'title';
  static const String writer = 'writer';
  static const String filepath = 'filepath';
  static const String liked = 'liked';

}

class Song{
  final int? id;
  final String title;
  final String writer;
  final String filepath;
  late bool liked;

  Song({
    this.id,
    required this.title,
    required this.writer,
    required this.filepath,
    required this.liked,
  });

  // Copy constructor -> creation of a new object needed ?
  Song copy({
    int? id,
    String? title,
    String? writer,
    String? filepath,
    bool? liked,
  }) => Song(
    id: id ?? this.id,
    title: title ?? this.title,
    writer: writer ?? this.writer,
    filepath: filepath ?? this.filepath,
    liked: liked ?? this.liked,
  );

  Map<String, Object?> toJson() => {
    SongField.id: id,
    SongField.title: title,
    SongField.writer: writer,
    SongField.filepath: filepath,
    SongField.liked: liked ? 1 : 0,
  };

  static Song fromJson(Map<String, Object?> json) => Song(
    id: json[SongField.id] as int,
    title: json[SongField.title] as String,
    writer: json[SongField.writer] as String,
    filepath: json[SongField.filepath] as String,
    liked: json[SongField.liked] == 1,
  );
}

