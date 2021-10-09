import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vtb_game_win/common/constants.dart';
import 'package:vtb_game_win/presentation/pages/about/about_page.dart';
import 'package:vtb_game_win/presentation/pages/fame/hall_of_fame.dart';
import 'package:vtb_game_win/presentation/pages/game/choose_strategy.dart';
import 'package:vtb_game_win/presentation/pages/game/game_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  Widget _hallOfFame = ChooseStrategy();
  Widget _game = GamePage();
  // Widget _about = AboutPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: GetColor.mainVTB,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        currentIndex: this._selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Container(), label: ""),
          BottomNavigationBarItem(
            icon: _bottomBarIcon('trophy'),
            label: "Hall of fame",
          ),
          BottomNavigationBarItem(
              icon: _bottomBarIcon('portfolio'), label: "Game"),
          BottomNavigationBarItem(icon: Container(), label: ""),
          // BottomNavigationBarItem(
          //   icon: _bottomBarIcon('profile'),
          //   label: "About",
          // )
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody() {
    switch (this._selectedIndex) {
      case 0:
        return this._hallOfFame;
      case 1:
        return this._hallOfFame;
      case 2:
        return this._game;
      // case 2:
      //   return this._about;
      default:
        return this._game;
    }
  }

  void onTapHandler(int index) {
    this.setState(() {
      this._selectedIndex = index;
    });
  }

  Widget _bottomBarIcon(String image) {
    return Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/icons/' + image + '.png'))));
  }
}
