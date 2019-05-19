import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
Expanded buildKey({Color color,int numberOfSound}){
  return Expanded(
                child: FlatButton(
                  color: color,
                  onPressed: () {
                    playSound(numberOfSound);
                  },
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            buildKey(color:Colors.red,numberOfSound: 1),
            buildKey(color:Colors.orange,numberOfSound: 2),
            buildKey(color:Colors.yellow,numberOfSound: 3),
            buildKey(color:Colors.green,numberOfSound: 4),
            buildKey(color:Colors.teal,numberOfSound: 5),
            buildKey(color:Colors.blue,numberOfSound: 6),
            buildKey(color:Colors.purple,numberOfSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
