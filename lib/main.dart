import 'package:flutter/material.dart';
import 'package:tarot/pages/title.dart';

void main() {
  runApp(TarotApp());
}

class TarotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => TitlePage(),
      },
      title: 'Tarot',
      darkTheme: ThemeData.dark(),
    );
  }
}
