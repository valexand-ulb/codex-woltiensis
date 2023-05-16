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
          print('added to read');
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
                padding: const EdgeInsets.fromLTRB(6.0, 2.0, 28.0, 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.song.title, style: Theme.of(context).textTheme.titleMedium,),
                    const SizedBox(height: 4.0),
                    Text(widget.song.writer, style: Theme.of(context).textTheme.bodyMedium,),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: IconButton(
                          onPressed: () {
                            setState(likeCard);
                          },
                          icon: Icon(
                            _likedIcon,
                            color: Theme.of(context).colorScheme.primary,
                            size: 24.0,
                          )
                      ),
                    ),
                  ],
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
    print('${liked ? "Liked" : "Unliked"} ${widget.song.title} by ${widget.song.writer}');
  }
}
