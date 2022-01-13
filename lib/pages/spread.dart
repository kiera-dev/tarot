import 'package:flutter/material.dart';
import 'package:tarot/pages/card.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class SpreadPage extends StatelessWidget {
  var spreadDeck = TarotDeck();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose spread"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        decoration: gradientBackground,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 25),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardPage('One')),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.33,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: spreadDeck.draw(1),
                      ),
                    ),
                    Text(
                      "One Card",
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardPage('Three')),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.33,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: spreadDeck.draw(3),
                      ),
                    ),
                    Text(
                      "Three Cards",
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CardPage('Elemental')),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.33,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: spreadDeck.draw(1),
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: spreadDeck.draw(3),
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: spreadDeck.draw(1),
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    Text(
                      "Elemental",
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardPage('Week')),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.33,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: spreadDeck.draw(1),
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: spreadDeck.draw(6),
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    Text(
                      "The week ahead",
                      style: Theme.of(context).textTheme.headline4,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
            ),
          ],
        ),
      ),
    );
  }
}
