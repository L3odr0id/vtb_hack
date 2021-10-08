import 'package:flutter/material.dart';
import 'package:vtb_game_win/presentation/pages/level/level_page.dart';

/// Кликабельная кнопка выбора уровня
class MapItem extends StatelessWidget {
  final bool unlocked;

  MapItem({required this.unlocked});

  @override
  Widget build(BuildContext context) {
    if (unlocked)
      return _unlockedButton(context);
    else
      return _lockedButton();
  }

  /// Разрешено открыть уровень
  Widget _unlockedButton(BuildContext context) {
    return Container(
        width: 228,
        height: 228,
        child: Center(
            child: IconButton(
                onPressed: () {
                  // TODO В блок обучения отправить туториалы этого уровня
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LevelPage()),
                  );
                },
                icon: Icon(
                  Icons.play_arrow_outlined,
                  size: 80,
                ))));
  }

  Widget _lockedButton() {
    return Container(
        width: 228,
        height: 228,
        child: Center(
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.lock,
                  size: 80,
                ))));
  }
}
