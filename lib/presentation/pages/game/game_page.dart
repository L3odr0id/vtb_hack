import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:swipeable_card_stack/swipe_controller.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'package:vtb_game_win/common/constants.dart';
import 'package:vtb_game_win/common/debug.dart';
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

  GameState currentState = GameState(currentEvent: debugEvent);

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
          Text(currentState.currentMoney.toString())
        ],
      ),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: GetColor.blueVTB,
      progressColor: GetColor.lightCircle,
    );
  }

  Widget _text() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: Card(
        child: Container(
          height: 246,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xff3A83F1),
          ),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 5),
                  child: Text(
                    "Последние новости",
                    style: GoogleFonts.roboto(textStyle:TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: Text(
                    "По словам Лизы Су, главного исполнительного директора AMD, "
                    "в этом году появится 20 новых заводов по производству микросхем и "
                    "еще столько же в следующем году. Так же она напомнила, "
                    "что компания ожидает закрытия сделки по покупке разработчика "
                    "интегральных микросхем Xilinx к концу этого года. Тем не менее,"
                    " Су всячески уклонялась от ответа на вопрос о том, не угрожает ли"
                    " AMD переход некоторых компаний, производящих электронику, "
                    "на микросхемы собственной разработки. Стоимость акций AMD "
                    "снижаются в ходе предварительных торгов на бирже Nasdaq во вторник.",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.roboto(textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,)),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
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
