/// Влияние карточки на индикаторы в случае выбора
class Impact {
  final double moneyImpact;
  final double riskImpact;

  const Impact({required this.moneyImpact, required this.riskImpact});
}

/// Одна игровая карточка
class GameCard {
  final String image;
  final String text;

  // Влияние на индикаторы
  final Impact sell;
  final Impact hold;
  final Impact buy;

  const GameCard(
      {required this.image,
      required this.text,
      required this.sell,
      required this.hold,
      required this.buy});
}

enum MultiplierType { absolute, percent, money }

/// Описание элемента статистики
class Multiplier {
  final String mainText;
  final String description;
  final MultiplierType type;

  const Multiplier(
      {required this.mainText, required this.description, required this.type});
}

/// Игровое событие. Содержит информацию
class GameEvent {
  final String eventText;
  final GameCard gameCard;
  final Map<Multiplier, double> multipliers;

  const GameEvent(
      {required this.eventText,
      required this.gameCard,
      required this.multipliers});
}
