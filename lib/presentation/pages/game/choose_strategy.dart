import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Strategy { longInves, shortInvest }

class ChooseStrategy extends StatefulWidget {
  const ChooseStrategy({Key? key}) : super(key: key);

  @override
  _ChooseStrategyState createState() => _ChooseStrategyState();
}

class _ChooseStrategyState extends State<ChooseStrategy> {
  Strategy? _strategy = Strategy.longInves;

  TextStyle _textStyle() {
    return GoogleFonts.roboto(
        textStyle: TextStyle(
            fontWeight: FontWeight.w300, fontSize: 18, color: Colors.black));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff295CA9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: _radioButtonsCard()),
            Stack(
              children: [
                _image(),
                _button(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _radioButtonsCard() {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        height: 230,
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 16, 20, 10),
                        child: Text(
                          "Какую стратегию ты хочешь выбрать?",
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: Colors.black)),
                        ),
                      ),
                    )
                  ],
                ),
                _radioButton(
                    "Долгосрочное \nинвестирование", Strategy.longInves),
                _radioButton(
                    'Краткосрочное \nинвестирование', Strategy.shortInvest)
              ],
            ),
            _strips()
          ],
        ),
      ),
    );
  }

  Widget _radioButton(String text, Strategy strategy) {
    return ListTile(
      title: Text(
        text,
        style: GoogleFonts.roboto(textStyle: _textStyle()),
      ),
      leading: Radio<Strategy>(
        value: strategy,
        groupValue: _strategy,
        onChanged: (Strategy? value) {
          setState(() {
            _strategy = value;
          });
        },
      ),
    );
  }

  Widget _strips() {
    return Padding(
      padding: const EdgeInsets.only(top: 111),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RotatedBox(
            quarterTurns: 2,
            child: Image(
              image: AssetImage('assets/other/25.png'),
              height: 124,
              alignment: Alignment.topRight,
            ),
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return Image(image: AssetImage('assets/natasha/group_33.png'));
  }

  Widget _button() {
    return Padding(
      padding: const EdgeInsets.only(left: 19),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
        ),
        onPressed: () {},
        child: Text("Далее",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              color: Color(0xff3A83F1),
            )),
      ),
    );
  }
}
