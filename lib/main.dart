import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(DeviceFileSource('assets/note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xylophone APpp by kazim ahahah'),
        ),
        body: Center(
          child: Column(
              // mainAxisAlignment: EdgeInsets.symmetric(20.0, 20.0),
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(1);
                    },
                    child: Text(''),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.purpleAccent),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(2);
                    },
                    child: Text(''),
                    style: TextButton.styleFrom(backgroundColor: Colors.indigo),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(3);
                    },
                    child: Text(''),
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(4);
                    },
                    child: Text(''),
                    style: TextButton.styleFrom(backgroundColor: Colors.green),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(5);
                    },
                    child: Text(''),
                    style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(6);
                    },
                    child: Text(''),
                    style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () async {
                      playsound(7);
                    },
                    child: Text(''),
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
