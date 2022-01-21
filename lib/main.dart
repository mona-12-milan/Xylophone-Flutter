import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded createKey(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              createKey(Colors.pinkAccent[400], 1),
              createKey(Colors.deepOrange[400], 2),
              createKey(Colors.yellow[800], 3),
              createKey(Colors.limeAccent[400], 4),
              createKey(Colors.green, 5),
              createKey(Colors.cyan, 6),
              createKey(Colors.purple[700], 7),
            ],
          ),
        ),
      ),
    );
  }
}
