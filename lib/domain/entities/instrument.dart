/// Стоимость актива в конкретное время
class Cost {
  final double marketCost;
  final DateTime date;

  const Cost({required this.marketCost, required this.date});
}

/// Мультипликаторы.
/// Не участвуют в рассчётах, они нужны лишь как справочная для игрока
class Multipliers {
  final String PE;

  const Multipliers({this.PE = "0.0"});
}

/// Финансовый инструмент.
/// Имеет название, описание, цену на начало отсчитываемого периода и конец,
/// а также мультипликаторы для тех анализа.
class Intrument {
  final String name;
  final Cost startCost;
  final Cost endCost;
  final String description;

  const Intrument(
      {required this.name,
      required this.startCost,
      required this.endCost,
      required this.description});
}

///
class Portfolio {}
