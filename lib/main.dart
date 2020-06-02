import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  Widget playSound(int noteNum, Color c) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNum.wav');
        },
        color: c,
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playSound(1, Colors.red),
              playSound(2, Colors.blue),
              playSound(3, Colors.yellow),
              playSound(4, Colors.green),
              playSound(5, Colors.orange),
              playSound(6, Colors.purple),
              playSound(7, Colors.teal),
            ],
          ),
        ),
      ),
    );
  }
}
