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

  Future close() async{
    final db = await instance.database;
    db.close();
  }
}