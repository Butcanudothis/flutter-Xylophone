import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

FlatButton BuildKey(Color k, int b) {
  return FlatButton(
    onPressed: () {
      player(b);
    },
    child: Card(
      color: k,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 18),
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(43, 43, 120, 1.0),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              BuildKey(Colors.lightBlueAccent.shade50, 1),
              BuildKey(Colors.lightBlue.shade50, 2),
              BuildKey(Colors.lightBlue.shade100, 3),
              BuildKey(Colors.lightBlueAccent.shade100, 4),
              BuildKey(Colors.lightBlueAccent.shade200, 5),
              BuildKey(Colors.lightBlueAccent.shade400, 6),
              BuildKey(Colors.lightBlueAccent.shade700, 7),
            ],
          ),
        ),
      ),
    );
  }
}

void player(int n) {
  final player = AudioCache();
  player.play('note$n.wav');
}
//decoration: BoxDecoration(
//            gradient: LinearGradient(colors: [
//          Colors.black,
//          Colors.blue,
//          Colors.lightBlue,
//          Colors.pink
//        ])),
