import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MusicApp());

class MusicApp extends StatelessWidget {
  void getSound(int number) {
    final player = AudioCache();
    player.play("note$number.wav");
  }

    Expanded buildKey({int soundNumber, Color color}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            getSound(soundNumber);
          },
        ),
      );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(soundNumber: 1, color: Colors.red),
                buildKey(soundNumber: 2, color: Colors.yellow),
                buildKey(soundNumber: 3, color: Colors.amber),
                buildKey(soundNumber: 4, color: Colors.brown),
                buildKey(soundNumber: 5, color: Colors.teal),
                buildKey(soundNumber: 6, color: Colors.blue),
                buildKey(soundNumber: 7, color: Colors.purple),
              ],
            ),
          )),
    );
  }
}
