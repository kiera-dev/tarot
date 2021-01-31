import 'package:flutter/material.dart';
import 'package:tarot/common_widgets.dart';

class CardPage extends StatelessWidget {
  var currentCard = TarotCard().getRandom();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Hey'),
        child: Icon(Icons.skip_next),
        tooltip: 'Next card',
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                child: Text(
                  currentCard.name,
                  style: TextStyle(fontSize: 60),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: currentCard,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
