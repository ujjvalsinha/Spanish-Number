import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static AudioCache player = AudioCache();
  Widget button(txt, col) {
    return MaterialButton(
      height: 80,
      minWidth: 170,
      color: col,
      child: Text(
        txt,
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      onPressed: () {
        pressed(txt);
      },
    );
  }

  pressed(txt) {
    player.play("${txt.toString().toLowerCase()}.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "shjdbf",
      theme: ThemeData.dark(),
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            " 🎻  ",
            style: TextStyle(fontSize: 80),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button("ONE", Color(0xFFd22d2d)),
              button("TWO", Color(0xFFc20ac2)),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button("THREE", Color(0xFF6666cc)),
              button("FOUR", Color(0xFF1a0066)),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button("FIVE", Color(0xFF006600)),
              button("SIX", Color(0xFFff6633)),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button("SEVEN", Color(0xFF999966)),
              button("EIGHT", Color(0xFFff4000)),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              button("NINE", Color(0xFF00ff00)),
              button("TEN", Color(0xFF9999ff)),
            ],
          ),
        ],
      )),
    );
  }
}
