import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(43, 43, 120, 1.0),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  player(1);
                },
                child: Card(
                  color: Colors.lightBlueAccent.shade50,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  player(2);
                },
                child: Card(
                  color: Colors.lightBlue.shade50,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  player(3);
                },
                child: Card(
                  color: Colors.lightBlue.shade100,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  player(4);
                },
                child: Card(
                  color: Colors.lightBlueAccent.shade100,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  player(5);
                },
                child: Card(
                  color: Colors.lightBlueAccent.shade200,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  player(6);
                },
                child: Card(
                  color: Colors.lightBlueAccent.shade400,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  player(7);
                },
                child: Card(
                  color: Colors.lightBlueAccent.shade700,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 18),
                  ),
                ),
              ),
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
