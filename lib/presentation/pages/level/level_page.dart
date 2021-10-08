import 'package:flutter/material.dart';
import 'package:vtb_game_win/domain/entities/tutorial.dart';

/// Страница уровня
class LevelPage extends StatefulWidget {
  LevelPage();

  @override
  State<StatefulWidget> createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _gamePage(),
      ],
    ));
  }

  Widget _tutorial() {
    // Получить туториалы из блока
    return Container();
  }

  Widget _gamePage() {
    return Column(children: [
      Text('Уровень 1'),
      _utils(),
      _field(),
    ]);
  }

  Widget _utils() {
    return Container();
  }

  Widget _field() {
    return Container();
  }
}
