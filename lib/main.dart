import 'package:flutter/material.dart';
import 'package:tarot/pages/choose.dart';

void main() {
  runApp(TarotApp());
}

class TarotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SpreadChoicePage(),
      },
      title: 'Tarot',
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
