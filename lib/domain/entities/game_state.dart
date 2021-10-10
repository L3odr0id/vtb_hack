import 'package:vtb_game_win/domain/entities/event.dart';

class GameState {
  List<int> prevIds = [];
  int currentMoney = 500000;
  int prevMoney = 500000;
  int currentRisk = 0;
  GameEvent currentEvent;

  GameState({required this.currentEvent});
}
