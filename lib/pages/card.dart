import 'package:flutter/material.dart';
import 'package:tarot/widgets/tarot.dart';

class CardPage extends StatelessWidget {
  String spread;
  CardPage(this.spread);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TarotSpread(
        name: 'One Card',
        children: [],
      ),
    );
  }
}
