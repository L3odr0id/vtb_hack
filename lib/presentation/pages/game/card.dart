import 'package:flutter/material.dart';
import 'package:vtb_game_win/common/constants.dart';
import 'package:vtb_game_win/presentation/pages/game/dialog.dart';

class CardView extends StatelessWidget {
  final String image;
  final String text;
  final String desc;

  CardView({required this.image, required this.text, required this.desc});

  @override
  Widget build(BuildContext context) {
    Radius imgRadius = Radius.circular(10.0);
    return Stack(
      children: [
        Card(
          color: GetColor.dark2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(children: [
            Container(
                height: 260,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: imgRadius, topRight: imgRadius),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/instruments/' + image)))),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: imgRadius, topRight: imgRadius),
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/other/25.png')))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => MultipliersDialog());
                    },
                    icon: Padding(
                        padding: EdgeInsets.only(top: 20, right: 20),
                        child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: imgRadius, topRight: imgRadius),
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image:
                                        AssetImage('assets/other/228.png'))))))
              ],
            )
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
                      text,
                      style: GetTextStyle.header,
                    ),
                    padding: EdgeInsets.only(top: 12),
                  ),
                  Padding(
                    child: Text(
                      desc,
                      style: GetTextStyle.desc,
                    ),
                    padding: EdgeInsets.only(top: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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
}
