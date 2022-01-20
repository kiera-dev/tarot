import 'package:flutter/material.dart';
import 'package:tarot/pages/card.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class SpreadPage extends StatelessWidget {
  var spreadDeck = TarotDeck(flippable: false);
  Map<String, List<int>> spreads = {
    'One Card': [1],
    'Three Card': [3],
    'Elemental': [1, 3, 1],
    'The Week Ahead': [1, 6],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose spread"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        decoration: gradientBackground,
        child: ListView.builder(
          padding: EdgeInsets.only(
            bottom: 50,
            top: 50,
          ),
          itemCount: this.spreads.length,
          itemBuilder: (context, index) {
            var spreadData = this.spreads.entries.elementAt(index);
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CardPage(
                            spreadData.key,
                            spreadData.value,
                          )),
                );
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 50),
                height: MediaQuery.of(context).size.height * 0.4,
                child: TarotSpread(
                  name: spreadData.key,
                  rows: spreadData.value,
                  flippable: false,
                  startFlipped: false,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
