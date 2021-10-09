import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'package:vtb_game_win/common/constants.dart';
import 'package:vtb_game_win/common/debug.dart';
import 'package:vtb_game_win/datasource/data.dart';
import 'package:vtb_game_win/domain/entities/event.dart';
import 'package:vtb_game_win/domain/entities/game_state.dart';
import 'package:vtb_game_win/presentation/pages/game/card.dart';

class GamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  SwipeableCardSectionController _cardController =
      SwipeableCardSectionController();

  GameState currentState = GameState(currentEvent: productionEvents.first);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        _indicators(),
        _text(),
        _cards(),
        _stats(),
      ]),
    ));
  }

  Widget _indicators() {
    return CircularPercentIndicator(
      radius: 160.0,
      animation: true,
      animationDuration: 1200,
      lineWidth: 20.0,
      percent: 0.5,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'общий капитал',
            style: GetTextStyle.smallGrey,
          ),
          Text(currentState.currentMoney.toString()),
        ],
      ),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: GetColor.darkBlueVTB,
      progressColor: GetColor.lightCircle,
    );
  }

  Widget _text() {
    return Card(
      child: Column(children: [
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Последние новости")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.fiber_manual_record_outlined)],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(currentState.currentEvent.eventText),
        )
      ]),
    );
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
