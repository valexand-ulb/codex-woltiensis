import 'database/database.dart';
import 'song.dart';

class ListedSong {

  List<Song> songs = [];
  List<Song> likedSongs = [];

  static ListedSong ? _listedSong;

  ListedSong._privateConstructor();

  static ListedSong get instance {
    _listedSong ??= ListedSong._privateConstructor();
    return _listedSong!;
  }

  static setLists(List<Song> songs, List<Song> likedSongs){
    _listedSong!.songs = songs;
    _listedSong!.likedSongs = likedSongs;
  }

  static likeSong(Song song){
    _listedSong!.likedSongs.add(song);
  }

  static unlikeSong(Song song){
    _listedSong!.likedSongs.remove(song);
  }
}