import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: MaterialButton(
              child: Text('Click Me'),
              onPressed: () {
                final player = AudioCache();
                // Predefined the path with 'assets/'
                player.play('note1.wav');
              },
            ),
          ),
        ),
      ),
    );
  }
}
