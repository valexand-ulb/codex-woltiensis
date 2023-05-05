import 'package:flutter/material.dart';

class SongCard extends Card{
  final String _songname;
  final String _writter;

  const SongCard(this._songname, this._writter, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const AspectRatio(
            aspectRatio: 18.0 / 11.0,
            child: Placeholder(), // TODO : images
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(_songname),
                const SizedBox(height: 8.0),
                Text(_writter),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              alignment: Alignment.bottomRight,
              onPressed: (){
                print('Liked $_songname');
              },
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
          )
        ],
      ),
    );
  }
}