import 'dart:math';

import 'package:bordered_text/bordered_text.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarot/pages/detail.dart';
import 'package:tarot/widgets/arcana.dart';

Map<String, List<int>> spreads = {
  'One Card': [1],
  'Three Card': [3],
  'Elemental': [1, 3, 1],
  'The Week Ahead': [1, 3, 3],
};

String getCardNum(int cardNum, Arcana arcana) {
  const displayNames = {
    1: 'A',
    11: 'P',
    12: 'Kn',
    13: 'Q',
    14: 'K',
  };

  if (arcana == Arcana.Major) {
    return '';
  } else {
    if (displayNames[cardNum] != null) {
      return displayNames[cardNum];
    } else {
      return cardNum.toString();
    }
  }
}

class TarotCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    Widget tarotCardWidget = FlipCard(
      // Reverse these so card starts flipped
      front: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      back: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage(this)),
          );
        },
        child: Container(
          padding: EdgeInsets.all(10),
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image: this.image),
          ),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BorderedText(
                      child: Text(
                        getCardNum(this.number, this.arcana),
                        style: GoogleFonts.robotoMono(fontSize: 24),
                      ),
                    ),
                  ],
                ),
                flex: 9,
              ),
              Expanded(
                child: Center(child: BorderedText(child: Text(this.name))),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );

    if (this.reversed) {
      return RotationTransition(
        turns: new AlwaysStoppedAnimation(180 / 360),
        child: tarotCardWidget,
      );
    } else {
      return tarotCardWidget;
    }
  }
}
