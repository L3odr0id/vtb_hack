import 'package:flutter/material.dart';
import 'package:vtb_game_win/common/constants.dart';
import 'package:vtb_game_win/domain/entities/event.dart';
import 'package:vtb_game_win/presentation/pages/game/dialog.dart';

class CardView extends StatelessWidget {
  // final String image;
  // final String text;
  // final String desc;
  // final bool isTutorial;

  final GameEvent gameEvent;

  CardView({required this.gameEvent});

  @override
  Widget build(BuildContext context) {
    Radius imgRadius = Radius.circular(10.0);
    return
        // return Expanded(
        //   child:
        SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: [
          Card(
            color: GetColor.dark2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(children: [
              if (!gameEvent.gameCard.isTutorial) _image(imgRadius),
              _strips(),
              if (gameEvent.gameCard.isTutorial) _tutorImage(imgRadius),
              _moreInformationButton(context)
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 250),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: GetColor.mainVTB,
                child: Column(
                  children: [
                    Padding(
                      child: Text(
                        gameEvent.gameCard.text,
                        textAlign: TextAlign.center,
                        style: GetTextStyle.header,
                      ),
                      padding: EdgeInsets.only(top: 12, left: 12, right: 12),
                    ),
                    Padding(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(13, 0, 13, 22),
                        child: Text(
                          gameEvent.eventText,
                          style: GetTextStyle.desc,
                        ),
                      ),
                      padding: EdgeInsets.only(top: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      //),
    );
    // return Card(
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   color: GetColor.dark2,
    //   child: Stack(
    //     children: [
    //       Container(
    //           height: 300,
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.only(
    //                   topLeft: imgRadius, topRight: imgRadius),
    //               image: DecorationImage(
    //                   fit: BoxFit.cover,
    //                   image: AssetImage('assets/instruments/' + image)))),
    //       Padding(
    //         padding: EdgeInsets.only(top: 300),
    //         child: Container(
    //           width: MediaQuery.of(context).size.width,
    //           child: Card(
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //             color: GetColor.mainVTB,
    //             child: Column(
    //               children: [
    //                 Text(
    //                   text,
    //                   style: GetTextStyle.header,
    //                 ),
    //                 Text(
    //                   desc,
    //                   style: GetTextStyle.desc,
    //                 )
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }

  Widget _image(Radius imgRadius) {
    return Container(
        height: 260,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.only(topLeft: imgRadius, topRight: imgRadius),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'assets/instruments/' + gameEvent.gameCard.image))));
  }

  Widget _tutorImage(Radius imgRadius) {
    return Container(
        height: 260,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.only(topLeft: imgRadius, topRight: imgRadius),
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(
                    'assets/natasha/' + gameEvent.gameCard.image + '.png'))));
  }

  Widget _strips() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image(
          image: AssetImage('assets/other/25.png'),
          height: 124,
          alignment: Alignment.topRight,
        ),
      ],
    );
  }

  Widget _moreInformationButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            showDialog(
                context: context, builder: (context) => MultipliersDialog());
          },
          iconSize: 30,
          icon: Image(
            image: AssetImage('assets/other/228.png'),
          ),
        )
      ],
    );
  }
}
