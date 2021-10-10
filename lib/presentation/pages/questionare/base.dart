import 'package:flutter/material.dart';
import 'package:vtb_game_win/presentation/pages/questionare/choose_strategy.dart';
import 'package:vtb_game_win/presentation/pages/questionare/final_page.dart';
import 'package:vtb_game_win/presentation/pages/questionare/first_question.dart';
import 'package:vtb_game_win/presentation/pages/questionare/second_question.dart';

class BaseQ extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      physics: ClampingScrollPhysics(),
      controller: _pageController,
      children: [
        HelloWordPage(
          pageController: _pageController,
        ),
        FirstQ(
          pageController: _pageController,
        ),
        SecondQ(
          pageController: _pageController,
        ),
        FinalQ()
      ],
    );
  }
}
