import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarot/widgets/arcana.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class TablePage extends StatelessWidget {
  final String name;
  final List<int> rows;

  TablePage(this.name, this.rows);

  @override
  Widget build(BuildContext context) {
    List<CardInfo> deck = TarotArcana().getAll();
    deck.shuffle();

    Column buildSpread() {
      Column tarotSpread = Column(
        children: [],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
      );

      this.rows.forEach(((cardCount) {
        Row cardRow = Row(
          children: [],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        );
        for (var i = 0; i < cardCount; i++) {
          cardRow.children.add(TarotCard(type: deck.removeLast()));
        }
        tarotSpread.children.add(cardRow);
      }));

      return tarotSpread;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.name,
          style: GoogleFonts.sacramento(fontSize: 30),
        ),
      ),
      body: Container(
        decoration: artDecoBackground,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: FittedBox(
          alignment: Alignment.center,
          fit: BoxFit.contain,
          child: Container(
            height: 1000,
            width: 800,
            child: buildSpread(),
          ),
        ),
      ),
    );
  }
}
