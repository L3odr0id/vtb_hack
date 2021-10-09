import 'package:flutter/material.dart';
import 'package:vtb_game_win/common/constants.dart';

class MultipliersDialog extends StatelessWidget {
  //final Map<String,> asda;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Показатели', style: GetTextStyle.dialogHeader),
        ],
      ),
      content: Container(
        height: 260,
        child: Column(
          children: [
            _field("Market Cao", "Стоимость компании", "129,12 млрд."),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            _field("P/S", "Цена акции / выручка", "2,88 млрд."),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Оценка стоимости",
                    style: GetTextStyle.dialogHeader,
                  )
                ],
              ),
            ),
            _field("P/E", "Цена акции / прибыль", "38"),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            _field("P/S", "Цена акции / выручка", "9.68"),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            _field("Рост выручки ", "Цена акции / выручка", "19,59 %")
          ],
        ),
      ),
      actions: [
      FlatButton(
      textColor: GetColor.dark2,
      onPressed: () {Navigator.pop(context); },
      child: Text('OK'),)]
    );
  }

  Widget _field(String title, String subTitle, String price) {
    return Stack(
      children: [
        Column(children: [
          Row(
            children: [
              Text(
                title,
                style: GetTextStyle.normal,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                subTitle,
                style: GetTextStyle.verySmall,
              )
            ],
          )
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                price,
                style: GetTextStyle.normal,
              ),
            ],
          ),
        )
      ],
    );
  }
}
