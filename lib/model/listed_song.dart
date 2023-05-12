import 'package:codex_woltiensis_demo/model/database/database.dart';
import 'package:codex_woltiensis_demo/model/song.dart';

class ListedSong {

  List<Song> songs = [];
  List<Song> likedSongs = [];

  static ListedSong ? _listedSong;

  ListedSong._privateConstructor();

  static ListedSong get instance {
    _listedSong ??= ListedSong._privateConstructor();
    return _listedSong!;
  }

 Future<void> setLists() async{
    CodexDatabase database = CodexDatabase.get();
    _listedSong!.songs = await database.getAllSongs();

    for (Song song in _listedSong!.songs){
      if (song.liked){
        _listedSong!.likedSongs.add(song);
      }
    }
  }

  static likeSong(Song song){
    _listedSong!.likedSongs.add(song);
    _updateSongDatabase(song);

  }

  static unlikeSong(Song song){
    _listedSong!.likedSongs.remove(song);
    _updateSongDatabase(song);
  }

  static _updateSongDatabase(Song song){
    CodexDatabase database = CodexDatabase.get();
    for (Song song in _listedSong!.songs){
      print('song: ${song.id}');
      database.updateSong(song);
    }
  }

  static close(){
    _listedSong = null;
  }
}