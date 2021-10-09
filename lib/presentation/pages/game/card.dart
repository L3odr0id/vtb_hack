import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String image;
  final String text;

  CardView({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    Radius imgRadius = Radius.circular(15.0);
    return Card(
      child: Column(
        children: [
          Container(
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: imgRadius, topRight: imgRadius),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/instruments/' + image)))),
          Text('Advanced Micro Devices (AMD)'),
        ],
      ),
    );
  }
}
