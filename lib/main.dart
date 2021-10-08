import 'package:flutter/material.dart';
import 'package:vtb_game_win/presentation/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja Y',
      home: HomePage(),
    );
  }
}
