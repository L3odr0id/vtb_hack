import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vtb_game_win/presentation/pages/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja Y',
      home: HomePage(),
    );
  }
}
