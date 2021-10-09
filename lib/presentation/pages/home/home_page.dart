import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vtb_game_win/presentation/pages/game/game_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        child: Text('Играть'),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => GamePage()));
        },
      ),
    ));
  }
}
