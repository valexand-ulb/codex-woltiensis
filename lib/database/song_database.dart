import 'dart:async';

import 'package:sqflite/sqflite.dart';

import '../model/song.dart';

class SongsDatabase {
  static final SongsDatabase instance = SongsDatabase.init();

  static Database? _database;

  SongsDatabase.init();

  Future<Database> get database async{
    _database ??= await _initDatabase('songs.db');

    return _database!;
  }

  Future<Database> _initDatabase(String filePath) async {
    final String databasePath = await getDatabasesPath();
    final String path = databasePath + filePath;
    return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }

  Future _createDatabase(Database db, int version) async {
    const String idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const String textType = 'TEXT NOT NULL';
    await db.execute('''
    CREATE TABLE $tableSongs(
    ${SongField.id} $idType,
    ${SongField.title} $textType,
    ${SongField.writer} $textType,
    ${SongField.lyrics} $textType
    )
    ''');
  }
  Future<Song> createSong(Song song)async{
    final database = await instance.database;

    final id = await database.insert(tableSongs, song.toJson());
    return song.copy(id: id);
  }

  Future<Song> readSong(int id) async {
    final database = await instance.database;

    final maps = await database.query(
      tableSongs,
      columns: SongField.values,
      where: '${SongField.id} = ?',
      whereArgs: [id],
    );

    if(maps.isNotEmpty){
      return Song.fromJson(maps.first);
    }else{
      throw Exception('ID $id not found');
    }
  }

  Future<List<Song>> readAllSong() async{
    final database = await instance.database;

    final result = await database.query(tableSongs);

    return result.map((json) => Song.fromJson(json)).toList();
  }

  Future<int> updateSong(Song song) async{
    final database = await instance.database;

    return database.update(
      tableSongs,
      song.toJson(),
      where: '${SongField.id} = ?',
      whereArgs: [song.id],
    );
  }

  Future<int> deleteSong(int id) async{
    final database = await instance.database;

    return await database.delete(
      tableSongs,
      where: '${SongField.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async{
    final db = await instance.database;
    db.close();
  }
}