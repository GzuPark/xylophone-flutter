import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Widget getNoteButton({
    required int noteNumber,
    required Color color,
  }) {
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
              getNoteButton(noteNumber: 1, color: Colors.red),
              getNoteButton(noteNumber: 2, color: Colors.orange),
              getNoteButton(noteNumber: 3, color: Colors.yellow),
              getNoteButton(noteNumber: 4, color: Colors.green),
              getNoteButton(noteNumber: 5, color: Colors.teal),
              getNoteButton(noteNumber: 6, color: Colors.blue),
              getNoteButton(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
