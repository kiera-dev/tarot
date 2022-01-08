import 'package:flutter/material.dart';
import 'package:tarot/widgets/tarot.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TarotSpread('Elemental'),
    );
  }
}
