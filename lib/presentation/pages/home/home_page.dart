import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vtb_game_win/presentation/pages/home/map_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MapItem(
            unlocked: true,
          ),
          MapItem(unlocked: false),
          MapItem(unlocked: false)
        ],
      ),
    );
  }
}
