import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'package:vtb_game_win/common/debug.dart';
import 'package:vtb_game_win/domain/entities/game_state.dart';
import 'package:vtb_game_win/presentation/pages/game/card.dart';

class GamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  SwipeableCardSectionController _cardController =
      SwipeableCardSectionController();

  GameState currentState = GameState(currentEvent: debugEvent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(15),
          child: Card(
            child: Column(
              children: [
                _bill(),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: _risk(),
                ),
              ],
            ),
          ),
        ),
        //_text(),

        _cards(),
        Container(
          height: 20,
        )
        // _stats(),
      ]),
    ));
  }

  Widget _bill() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 18, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "На счету",
                textAlign: TextAlign.left,
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
          child: Row(
            children: [
              Text(
                currentState.currentMoney.toString(),
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
              Container(
                width: 94,
                height: 23,
                margin: EdgeInsets.only(left: 26.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffD8E6FC)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
                      child: Icon(
                        Icons.arrow_downward_sharp,
                        color: Color(0xffFF4459),
                        size: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 3, 8, 4),
                      child: Text(
                        "23.234",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFF4459)),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _risk() {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Риск",
              textAlign: TextAlign.left,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(currentState.currentRisk.toString() + '%',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )),
          ],
        ),
      ),
    ]);
  }

  Widget _cards() {
    return SwipeableCardsSection(
      cardController: _cardController,
      context: context,
      //add the first 3 cards (widgets)
      items: [
        CardView(
          image: 'amd1.png',
          text: 'Последняя новость',
          desc: 'По словам Лизы Су, главного исполнительного директора AMD, '
              'в этом году появится 20 новых заводов по производству микросхем '
              'и еще столько же в следующем году.',
        )
      ],
      //Get card swipe event callbacks
      onCardSwiped: (dir, index, widget) {
        //Add the next card using _cardController
        _cardController.addItem(CardView(
          text: "Next card",
          image: 'amd1.png',
          desc: 'das',
        ));

        //Take action on the swiped widget based on the direction of swipe
        //Return false to not animate cards
      },
      //
      enableSwipeUp: false,
      enableSwipeDown: true,
    );
  }
}
