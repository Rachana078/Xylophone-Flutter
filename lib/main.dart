import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(' '),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade700,
          title: Center(
              child: Text(
                'MINI - XYLOPHONE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                ),
              )),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red.shade300, soundNumber: 1),
              buildKey(color: Colors.orange.shade300, soundNumber: 2),
              buildKey(color: Colors.yellow.shade300, soundNumber: 3),
              buildKey(color: Colors.green.shade300, soundNumber: 4),
              buildKey(color: Colors.teal.shade300, soundNumber: 5),
              buildKey(color: Colors.blue.shade300, soundNumber: 6),
              buildKey(color: Colors.purple.shade300, soundNumber: 7),
            ],
          ),
        ),
      ),
    );}}