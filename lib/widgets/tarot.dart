import 'dart:math';

import 'package:bordered_text/bordered_text.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:tarot/pages/card_detail.dart';
import 'package:tarot/widgets/arcana.dart';

Map<String, List<int>> spreads = {
  'One Card': [1],
  'Three Card': [3],
  'Elemental': [1, 3, 1],
  'The Week Ahead': [1, 3, 3],
};

String getDisplayNum(int cardNum) {
  const displayNames = {
    1: 'A',
    11: 'P',
    12: 'Kn',
    13: 'Q',
    14: 'K',
  };
  if (displayNames[cardNum] != null) {
    return displayNames[cardNum];
  } else {
    return cardNum.toString();
  }
}

Widget constructCardLayout(CardInfo card) {
  return Container(
    child: Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(left: 10)),
            BorderedText(
              child: Text(
                getDisplayNum(card.number),
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BorderedText(
              child: Text(
                card.name,
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 5)),
      ],
    ),
    height: 300,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        image: card.image,
        fit: BoxFit.cover,
      ),
    ),
  );
}

class TarotCard extends StatefulWidget {
  final CardInfo type;
  String name;
  Arcana arcana;
  int number;
  Suits suit;
  String description;
  AssetImage image;
  bool reversed;

  TarotCard({
    @required this.type,
  }) {
    this.name = this.type.name;
    this.arcana = this.type.arcana;
    this.number = this.type.number;
    this.suit = this.type.suit;
    this.image = this.type.image;

    this.reversed = Random().nextBool();
    this.description = this.reversed
        ? this.type.reverseDescription
        : this.type.uprightDescription;
  }

  @override
  _TarotCardState createState() => _TarotCardState();
}

class _TarotCardState extends State<TarotCard> {
  Widget buildCardFront(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CardDetailPage(this.widget)),
        );
      },
      child: Hero(
        tag: this.widget.name,
        child: constructCardLayout(this.widget.type),
      ),
    );
  }

  Widget buildCardBack(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage('images/back.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget tarotCardWidget = FlipCard(
      // Reverse these so card starts flipped
      front: buildCardBack(context),
      back: buildCardFront(context),
    );
    if (this.widget.reversed) {
      return RotationTransition(
        turns: new AlwaysStoppedAnimation(180 / 360),
        child: tarotCardWidget,
      );
    } else {
      return tarotCardWidget;
    }
  }
}
