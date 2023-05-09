import 'package:flutter/material.dart';

class SongCard extends StatefulWidget {
  final String _songname;
  final String _writter;

  bool _liked = false;
  static IconData likedIcon = Icons.favorite_border;


  SongCard(this._songname, this._writter, {super.key});

  @override
  State<SongCard> createState() => _SongCardState();
}

class _SongCardState extends State<SongCard> {

  IconData get likedIcon => SongCard.likedIcon;
  set likedIcon(IconData value) {
    setState(() {
      SongCard.likedIcon = value;
    });
  }

  bool get liked => widget._liked;
  set liked(bool value) {
    setState(() {
      widget._liked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child:InkWell(
        onDoubleTap: (){
          setState(likeCard);
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
                  //const SizedBox(height: 8.0),
                  Text(widget._writter),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: (){
                  likeCard();
                },
                icon: Icon(
                  likedIcon,
                  color: Colors.pink,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void likeCard() {
    if (!liked) {
      print('Liked ${widget._songname}');
      likedIcon = Icons.favorite;
      liked = true;
    } else {
      print('Unliked ${widget._songname}');
      likedIcon = Icons.favorite_border;
      liked = false;
    }
  }
}