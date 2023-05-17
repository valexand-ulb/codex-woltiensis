import 'package:flutter/material.dart';

import 'package:codex_woltiensis_demo/model/listed_song.dart';
import 'package:codex_woltiensis_demo/model/song.dart';

class SongCard extends StatefulWidget {
  final Song song;


  const SongCard(this.song, {super.key});

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  late bool liked;
  late IconData _likedIcon;

  @override
  void initState() {
    super.initState();
    liked = widget.song.liked;
    _likedIcon = liked ? Icons.favorite : Icons.favorite_border;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onDoubleTap: () {
          setState(likeCard);
        },
        onLongPress: () {
          readCard(widget.song);
        },
        child: Stack(
          children:<Widget>[Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const AspectRatio(
                aspectRatio: 18.0 / 11.0,
                child: Image(
                    image: AssetImage("assets/images/woltje_default.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(6.0, 2.0, 28.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.song.title, style: Theme.of(context).textTheme.titleMedium,),
                      const SizedBox(height: 4.0),
                      Text(widget.song.writer, style: Theme.of(context).textTheme.bodyMedium,),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 24.0,
                    maxHeight: 24.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(likeCard);
                          },
                          icon: Icon(
                            _likedIcon,
                            color: Theme.of(context).colorScheme.primary,
                            size: 24.0,
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }

  void likeCard() {
    setState(() {
      liked = !liked;

      _likedIcon = liked ? Icons.favorite : Icons.favorite_border;

      liked ? ListedSong.likeSong(widget.song) :
      ListedSong.unlikeSong(widget.song);

      widget.song.liked = liked;

    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${liked ? "Liked" : "Unliked"} ${widget.song.title} by ${widget.song.writer}'),
        duration: const Duration(milliseconds: 1000),
      ),
    );
  }

  void readCard(Song song) {
    ListedSong.toReadSong(song);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${widget.song.title} by ${widget.song.writer} added in lecture'),
        duration: const Duration(milliseconds: 800),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
