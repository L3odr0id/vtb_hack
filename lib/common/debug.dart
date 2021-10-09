import 'package:vtb_game_win/domain/entities/event.dart';

const Impact _tempImpact = Impact(moneyImpact: 1.0, riskImpact: 1.0);
const GameEvent debugEvent = GameEvent(
    id: 0,
    eventText:
        'По словам Лизы Су, главного исполнительного директора AMD, в этом году появится 20 новых заводов по производству микросхем и еще столько же в следующем году. Так же она напомнила, что компания ожидает закрытия сделки по покупке разработчика интегральных микросхем Xilinx к концу этого года. Тем не менее, Су всячески уклонялась от ответа на вопрос о том, не угрожает ли AMD переход некоторых компаний, производящих электронику, на микросхемы собственной разработки. Стоимость акций AMD снижаются в ходе предварительных торгов на бирже Nasdaq во вторник.',
    multipliers: {
      Multiplier(
          mainText: 'P/E',
          description: 'Цена акции / прибыль',
          type: MultiplierType.absolute): 38,
      Multiplier(
          mainText: 'P/S',
          description: 'Цена акции / выручка',
          type: MultiplierType.absolute): 9.68,
      Multiplier(
          mainText: 'EPS',
          description: 'Прибыль на акцию',
          type: MultiplierType.money): -134,
      Multiplier(
          mainText: 'ROA',
          description: 'Рентабельность актива',
          type: MultiplierType.percent): -23.07,
    },
    gameCard: GameCard(
        image: 'amd1',
        text: 'Advanced Micro Devices (AMD)',
        sell: _tempImpact,
        hold: _tempImpact,
        buy: _tempImpact));