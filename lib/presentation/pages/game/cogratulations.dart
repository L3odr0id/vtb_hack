import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff295CA9),
      body: SafeArea(
        child: Column(
          children: [
            _sumCard(),
            Stack(children: [
              _congratulationsCard(),
              Padding(
                padding: const EdgeInsets.only(top: 155),
                child: Stack(
                  children: [
                    _image(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 57, 0, 0),
                      child: Column(
                        children: [
                          _button("Начать \nприключение"),
                          _button("Попробовать \nеще раз"),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }

  Widget _sumCard() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 14),
      child: Card(
        child: Container(
            height: 91,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 16, 0, 0),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          "Итого ты заработал",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "1.000.000 ",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        )
                      ],
                    )
                  ]),
                ),
                _strips()
              ],
            )),
      ),
    );
  }

  Widget _strips() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RotatedBox(
          quarterTurns: 2,
          child: Image(
            image: AssetImage('assets/other/25.png'),
            alignment: Alignment.topRight,
          ),
        ),
      ],
    );
  }

  Widget _congratulationsCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Card(
        child: Container(
          height: 182,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13, top: 20),
                child: Row(
                  children: [
                    Text(
                      "Мои поздравления!",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 18, 22, 27),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        "Ты изучил основы инвестирования и смог собрать "
                        "свой первый прибыль портфель. Теперь ты можешь "
                        "начать зарабатывать настоящие деньги!",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.black)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _image() {
    return Image(
      image: AssetImage("assets/natasha/Group_38.png"),
      alignment: Alignment.topRight,
    );
  }

  Widget _button(String text) {
    return                           ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
        ),
        child: Text(text,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              color: Color(0xff3A83F1),
            )));

  }
}
