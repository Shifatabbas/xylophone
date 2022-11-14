import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int soundNum) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNum.wav'),
    );
  }

  Expanded buildKey({Color? color, int? playSounds}) {
    return Expanded(
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: () {
            playSound(playSounds!);
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final player = AudioPlayer();

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(playSounds: 1, color: Colors.red),
              buildKey(playSounds: 1, color: Colors.orange),
              buildKey(playSounds: 1, color: Colors.yellow),
              buildKey(playSounds: 1, color: Colors.green),
              buildKey(playSounds: 1, color: Colors.teal),
              buildKey(playSounds: 1, color: Colors.blue),
              buildKey(playSounds: 1, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
