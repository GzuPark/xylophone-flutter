import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Widget getNoteButton(int noteNumber, Color color) {
    return Expanded(
      child: MaterialButton(
        onPressed: () => player.play('note$noteNumber.wav'),
        color: color,
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
            children: [
              getNoteButton(1, Colors.red),
              getNoteButton(2, Colors.orange),
              getNoteButton(3, Colors.yellow),
              getNoteButton(4, Colors.green),
              getNoteButton(5, Colors.teal),
              getNoteButton(6, Colors.blue),
              getNoteButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
