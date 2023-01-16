import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void player(String path) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$path.wav'));
  }

  Widget buildKey(Color color, String path) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () async {
          player(path);
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
              buildKey(Colors.brown, '1'),
              buildKey(Colors.teal, '2'),
              buildKey(Colors.orange, '3'),
              buildKey(Colors.blue, '4'),
              buildKey(Colors.yellow, '5'),
              buildKey(Colors.pink, '6'),
              buildKey(Colors.red, '7'),
            ],
          ),
        ),
      ),
    );
  }
}
