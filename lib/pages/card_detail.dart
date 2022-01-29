import 'package:flutter/material.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class CardDetailPage extends StatelessWidget {
  TarotCard card;

  CardDetailPage(this.card) {
    this.card.flippable = false;
    this.card.startFlipped = false;
    this.card.heroEnabled = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(25),
        width: MediaQuery.of(context).size.width,
        decoration: gradientBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: this.card,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 25)),
            Text(this.card.description),
          ],
        ),
      ),
    );
  }
}
