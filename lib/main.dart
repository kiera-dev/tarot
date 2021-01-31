import 'package:flutter/material.dart';
import 'package:tarot/pages/menu.dart';
import 'package:tarot/pages/threeinfo.dart';
import 'package:tarot/pages/past.dart';
import 'package:tarot/pages/present.dart';
import 'package:tarot/pages/future.dart';
import 'package:tarot/pages/threesummary.dart';

void main() {
  runApp(TarotApp());
}

class TarotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/menu': (context) => MenuPage(),
        '/threeinfo': (context) => ThreeInfoPage(),
        '/past': (context) => PastPage(),
        '/present': (context) => PresentPage(),
        '/future': (context) => FuturePage(),
        '/threesummary': (context) => ThreeSummaryPage(),
      },
      title: 'Tarot',
      theme: ThemeData(
        primaryColor: Colors.blueGrey.shade800,
        accentColor: Colors.blueGrey.shade800,
        // brightness: Brightness.dark,
      ),
    );
  }
}
