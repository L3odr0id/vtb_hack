import 'package:flutter/material.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'package:vtb_game_win/domain/entities/event.dart';
import 'package:vtb_game_win/presentation/pages/game/card.dart';

class GamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  SwipeableCardSectionController _cardController =
      SwipeableCardSectionController();

  static const Impact _tempImpact = Impact(moneyImpact: 1.0, riskImpact: 1.0);
  GameEvent currentEvent = GameEvent(
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        _indicators(),
        _text(),
        _cards(),
        _stats(),
      ]),
    );
  }

  Widget _indicators() {
    return Container();
  }

  Widget _text() {
    return Container();
  }

  Widget _cards() {
    return SwipeableCardsSection(
      cardController: _cardController,
      context: context,
      //add the first 3 cards (widgets)
      items: [
        CardView(
          text: "First card",
          image: 'amd1.png',
        ),
        CardView(text: "Second card", image: 'amd1.png'),
        CardView(text: "Third card", image: 'amd1.png'),
      ],
      //Get card swipe event callbacks
      onCardSwiped: (dir, index, widget) {
        //Add the next card using _cardController
        _cardController.addItem(CardView(text: "Next card", image: 'amd1.png'));

        //Take action on the swiped widget based on the direction of swipe
        //Return false to not animate cards
      },
      //
      enableSwipeUp: false,
      enableSwipeDown: true,
    );
  }

  Widget _stats() {
    return Container();
  }
}
