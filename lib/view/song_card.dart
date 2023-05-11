import 'package:flutter/material.dart';

class SongCard extends StatefulWidget {
  final String _songname;
  final String _writter;
  final bool _liked;


  const SongCard(this._songname, this._writter, this._liked, {super.key});

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  late bool liked;
  late IconData _likedIcon;

  @override
  void initState() {
    super.initState();
    liked = widget._liked;
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
                child: Placeholder(), // TODO : images
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(6.0, 2.0, 16.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget._songname),
                    Text(widget._writter),
                  ],
                ),
              ),
              Expanded(
                child: IconButton(
                    onPressed: () {
                      setState(likeCard);
                    },
                    icon: Icon(
                      _likedIcon,
                      color: Colors.pink,
                      size: 24.0,
                    )
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
    });
    print('${liked ? "Liked" : "Unliked"} ${widget._songname}');
  }
}
