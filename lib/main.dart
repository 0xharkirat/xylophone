import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
    XylophoneApp(
    )
);

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber){
    final audio = AudioPlayer();
    audio.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey(Color color, int noteNumber){
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(noteNumber);
        },
        style: TextButton.styleFrom(

          backgroundColor: color, // Background Color
        ),
        child: Text(""),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget> [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.blue, 5),
              buildKey(Colors.indigo, 6),
              buildKey(Colors.purple, 7),



            ],
          ),
        ),
      ),
    );
  }
}
