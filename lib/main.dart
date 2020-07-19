import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int number) {
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        child: null,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(number: 1, color: Colors.yellowAccent),
              buildKey(number: 2, color: Colors.lightGreenAccent),
              buildKey(number: 3, color: Colors.lime),
              buildKey(number: 4, color: Colors.lightGreen),
              buildKey(number: 5, color: Colors.yellow),
              buildKey(number: 6, color: Colors.green),
              buildKey(number: 7, color: Colors.limeAccent),
            ],
          ),
        ),
      ),
    );
  }
}
