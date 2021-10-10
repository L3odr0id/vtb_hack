import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vtb_game_win/common/constants.dart';

class HallOfFamePage extends StatelessWidget {
  final List<int> prices = List<int>.filled(5, 0);
  final List<String> dates = [
    "23.12.01", "23.12.01", "23.12.01", "23.12.01","23.12.01",
  ];

  // HallOfFamePage({required this.prices, required this.dates});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GetColor.dark2,
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13, top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                prices[index] >= 0
                                    ? "Итого ты заработал"
                                    : 'Итого ты потерял,',
                                style: GetTextStyle.desc2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 17),
                                child: Text(
                                  dates[index],
                                  style: GetTextStyle.desc2,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "1.000.000",
                                style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color:  prices[index] >= 0
                                            ? Color(0xff55EFC4)
                                            : Color(0xffFF4459),
                                        fontSize: 36)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    //stripes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 2,
                          child: Image(
                            image: AssetImage('assets/other/25.png'),
                            height: 91,
                            alignment: Alignment.topRight,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
