import 'package:flutter/material.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'package:vtb_game_win/presentation/pages/game/card.dart';

class GamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  SwipeableCardSectionController _cardController =
      SwipeableCardSectionController();

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
      enableSwipeUp: true,
      enableSwipeDown: false,
    );
  }

  Widget _stats() {
    return Container();
  }
}
