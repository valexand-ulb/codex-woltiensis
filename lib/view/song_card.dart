import 'package:flutter/material.dart';

class SongCard extends StatefulWidget {
  final String _songname;
  final String _writter;

  const SongCard(this._songname, this._writter, {super.key});

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {
  bool _liked = false;
  IconData _likedIcon = Icons.favorite_border;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Placeholder(), // TODO : images
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget._songname),
                  Text(widget._writter),
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                    onPressed: () {
                      setState(likeCard);
                    },
                    icon: Icon(
                      _likedIcon,
                      color: Colors.pink,
                      size: 24.0,
                    )))
          ],
        ),
      ),
    );
  }

  void likeCard() {
    if (!_liked) {
      print('Liked ${widget._songname}');
      _likedIcon = Icons.favorite;
    } else {
      print('Unliked ${widget._songname}');
      _likedIcon = Icons.favorite_border;
    }
    _liked = !_liked;
  }
}
