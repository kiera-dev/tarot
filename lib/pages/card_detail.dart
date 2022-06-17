import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class CardDetailPage extends StatelessWidget {
  TarotCard card;

  CardDetailPage(this.card);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.card.name,
          style: GoogleFonts.sacramento(fontSize: 30),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        width: MediaQuery.of(context).size.width,
        decoration: artDecoBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: Hero(
                  tag: this.card.name,
                  child: this.card.reversed
                      ? RotationTransition(
                          turns: new AlwaysStoppedAnimation(180 / 360),
                          child: constructCardLayout(this.card.type),
                        )
                      : constructCardLayout(this.card.type),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 25)),
            BorderedText(
              child: Text(
                this.card.description,
                style: GoogleFonts.sacramento(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
