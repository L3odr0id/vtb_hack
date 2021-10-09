import 'package:vtb_game_win/domain/entities/event.dart';

class GameState {
  final List<int> prevIds;
  int currentMoney = 0;
  int currentRisk = 0;
  GameEvent currentEvent;

  GameState(
      {required this.currentEvent,
      this.currentMoney = 10000,
      this.currentRisk = 0,
      this.prevIds = const []});
}
