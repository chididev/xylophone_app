import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Xylophone(),
      ),
    );
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            primary: Colors.white,
          ),
          onPressed: (){
            final assetsAudioPlayer = AssetsAudioPlayer();

            assetsAudioPlayer.open(
              Audio("assets/assets/note1.wav"),
            );
          },
          child: Text('Hello'),
        ),)
      ],
    );
  }
}
