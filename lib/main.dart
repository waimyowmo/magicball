import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of    your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
          backgroundColor: Colors.brown,
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Center(
              child: Text(
                "Magic Challenge",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          body: MagicChallenge(),
        ));
  }
}

class MagicChallenge extends StatefulWidget {
  @override
  _MagicChallengeState createState() => _MagicChallengeState();
}

class _MagicChallengeState extends State<MagicChallenge> {
  int magicphoto = 1;
  void magicphotochange() {
    setState(
      () {
        magicphoto = Random().nextInt(5) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                magicphotochange();
              },
              child: Image.asset("images/ans$magicphoto.png"),
            ),
          ),
        ],
      ),
    );
  }
}
