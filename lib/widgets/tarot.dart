import 'dart:math';

import 'package:bordered_text/bordered_text.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:tarot/pages/card_detail.dart';
import 'package:tarot/widgets/arcana.dart';

class TarotDeck {
  List<TarotCard> deck = [];
  bool flippable;
  bool startFlipped;
  bool heroEnabled;

  TarotDeck({
    this.flippable = true,
    this.startFlipped = true,
    this.heroEnabled = true,
  }) {
    // TODO(mjcastner): Consider implementing reflection for this
    // Populate major arcana
    this.deck.add(
          TarotCard(
            type: TarotArcana.theFool,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theMagician,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theHighPriestess,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theEmpress,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theEmperor,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theHierophant,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theLovers,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theChariot,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.strength,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theHermit,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.wheelOfFortune,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.justice,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theHangedMan,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.death,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.temperance,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theDevil,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theTower,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theStar,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theMoon,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theSun,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.judgement,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.theWorld,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );

    // Populate minor arcana
    // Pentacles
    this.deck.add(
          TarotCard(
            type: TarotArcana.aceOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.twoOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.threeOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.fourOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.fiveOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.sixOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.sevenOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.eightOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.nineOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.tenOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.pageOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.knightOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.queenOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.kingOfPentacles,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );

    // Cups
    this.deck.add(
          TarotCard(
            type: TarotArcana.aceOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.twoOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.threeOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.fourOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.fiveOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.sixOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.sevenOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.eightOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.nineOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.tenOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.pageOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.knightOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.queenOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.kingOfCups,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );

    // Wands
    this.deck.add(
          TarotCard(
            type: TarotArcana.aceOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.twoOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.threeOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.fourOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.fiveOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.sixOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.sevenOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.eightOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.nineOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.tenOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.pageOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.knightOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.queenOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.kingOfWands,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );

    // Swords
    this.deck.add(
          TarotCard(
            type: TarotArcana.aceOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.twoOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.threeOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.fourOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.fiveOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.sixOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.sevenOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.eightOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.nineOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.tenOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.pageOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.knightOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.queenOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );
    this.deck.add(
          TarotCard(
            type: TarotArcana.kingOfSwords,
            flippable: this.flippable,
            startFlipped: this.startFlipped,
            heroEnabled: this.heroEnabled,
          ),
        );

    this.deck.shuffle();
  }

  List<TarotCard> draw({numCards = 1}) {
    List<TarotCard> drawnCards = [];
    for (int i = 1; i <= numCards; i++) {
      drawnCards.add(deck.removeLast());
    }
    return drawnCards;
  }
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
  bool flippable;
  bool startFlipped;
  bool heroEnabled;

  TarotCard({
    @required this.type,
    this.flippable = true,
    this.startFlipped = true,
    this.heroEnabled = true,
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
  bool isHovering = false;

  Widget buildCardBack(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage('images/back.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildCardFront(BuildContext context) {
    if (this.widget.heroEnabled) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CardDetailPage(this.widget)),
          );
        },
        child: Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  BorderedText(
                    child: Text(
                      getDisplayNum(this.widget.number),
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
                      this.widget.name,
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
              image: this.widget.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    } else {
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
                    getDisplayNum(this.widget.number),
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
                    this.widget.name,
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
            image: this.widget.image,
            fit: BoxFit.cover,
          ),
        ),
      );
    }
  }

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

  @override
  Widget build(BuildContext context) {
    if (this.widget.reversed) {
      return RotationTransition(
        turns: new AlwaysStoppedAnimation(180 / 360),
        child: FlipCard(
          flipOnTouch: this.widget.flippable,
          front: this.widget.startFlipped
              ? buildCardBack(context)
              : buildCardFront(context),
          back: this.widget.startFlipped
              ? buildCardFront(context)
              : buildCardBack(context),
        ),
      );
    } else {
      return FlipCard(
        flipOnTouch: this.widget.flippable,
        front: this.widget.startFlipped
            ? buildCardBack(context)
            : buildCardFront(context),
        back: this.widget.startFlipped
            ? buildCardFront(context)
            : buildCardBack(context),
      );
    }
  }
}

class TarotSpread extends StatelessWidget {
  final String name;
  final List<int> rows;
  Column spreadWidget;
  final bool flippable;
  final bool startFlipped;
  bool heroEnabled;

  TarotSpread({
    @required this.name,
    @required this.rows,
    this.flippable = true,
    this.startFlipped = true,
    this.heroEnabled = true,
  }) {
    var tempDeck = TarotDeck(
      flippable: this.flippable,
      startFlipped: this.startFlipped,
      heroEnabled: this.heroEnabled,
    );
    spreadWidget = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [],
    );
    rows.forEach((cardCount) {
      spreadWidget.children.add(Padding(
        padding: EdgeInsets.only(bottom: 25),
      ));
      spreadWidget.children.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: addPadding(tempDeck.draw(numCards: cardCount)),
      ));
      spreadWidget.children.add(Padding(
        padding: EdgeInsets.only(bottom: 25),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: spreadWidget,
    );
  }

  List addPadding(List<Widget> unpaddedWidgets, {double padding = 15}) {
    List<Widget> paddedWidgets = [];
    paddedWidgets.add(Padding(
      padding: EdgeInsets.all(padding),
    ));
    unpaddedWidgets.forEach((element) {
      paddedWidgets.add(element);
      paddedWidgets.add(Padding(
        padding: EdgeInsets.all(padding),
      ));
    });
    return paddedWidgets;
  }
}
