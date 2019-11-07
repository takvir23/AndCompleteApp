import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:vibration/vibration.dart';

void main() {
  runApp(xylophoneApp());
}

class xylophoneApp extends StatelessWidget {
  @override
  void playSound(int soundNo){
    AudioCache player = AudioCache();
    player.play('note$soundNo.wav');
    Vibration.vibrate(duration: 50);
  }
  Expanded buildKey(Color color, soundNo){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNo);
        },
      ),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.green, 2),
              buildKey(Colors.blue, 3),
              buildKey(Colors.orange, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.yellow, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}

