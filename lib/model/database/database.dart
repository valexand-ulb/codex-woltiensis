import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'package:codex_woltiensis_demo/model/song.dart';

class CodexDatabase {
  static const String tableSongs = 'songs';

  static final CodexDatabase _db = CodexDatabase.internal();

  CodexDatabase.internal();

  static CodexDatabase get() => _db;
  static Database? _database;

  Future<Database> get database async =>
    _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {

    final path = join(await getDatabasesPath(), 'codex.db');

    // Open the database and store the reference.
    final database = await openDatabase(
      path,
      onCreate: _createTables,
      version: 1,
    );

    return database;
  }

  Future _createTables(Database db, int version) async {
    const String idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const String textType = 'TEXT NOT NULL';
    const String unique = 'UNIQUE';
    const String boolType = 'BOOLEAN NOT NULL';
    await db.execute('''
    CREATE TABLE $tableSongs(
    ${SongField.id} $idType,
    ${SongField.title} $textType $unique,
    ${SongField.writer} $textType,
    ${SongField.filepath} $textType,
    ${SongField.liked} $boolType
    );
    ''');
  }

  Future<Song> insertSong(Song song) async {
    final db = await database;
    final id = await db.insert(tableSongs, song.toJson(), conflictAlgorithm: ConflictAlgorithm.ignore);
    return song.copy(id: id);
  }

  Future<List<Song>> getAllSongs() async {
    final db = await database;
    final List<Map<String, dynamic>> result = await db.query(tableSongs);

    return result.map((json) => Song.fromJson(json)).toList();
  }

  Future<List<Song>> getAllLikedSongs() async {
    final db = await database;
    final List<Map<String, dynamic>> result = await db.query(tableSongs, where: '${SongField.liked} = TRUE');

    return result.map((json) => Song.fromJson(json)).toList();
  }

  Future<int> updateSong(Song song) async {
    final db = await database;
    return db.update(
      tableSongs,
      song.toJson(),
      where: '${SongField.id} = ?',
      whereArgs: [song.id],
    );
  }

  Future<int> deleteSong(int id) async {
    final db = await database;
    return await db.delete(
      tableSongs,
      where: '${SongField.id} = ?',
      whereArgs: [id],
    );
  }


  Future close() async {
    final db = await database;
    db.close();
  }
}