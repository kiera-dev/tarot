import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        padding: EdgeInsets.all(25),
        color: Colors.green,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(children: spreadDeck.draw(1)),
              Row(children: [
                Text(
                  'Draw One',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                )
              ]),
              Row(children: spreadDeck.draw(3)),
              Row(children: [Text('Draw Three')]),
              Row(children: spreadDeck.draw(1)),
              Row(children: spreadDeck.draw(3)),
              Row(children: spreadDeck.draw(1)),
              Row(children: [Text('Elemental')]),
              Row(children: spreadDeck.draw(1)),
              Row(children: spreadDeck.draw(6)),
              Row(children: [Text('Weekly')]),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: Container(
      //       decoration: gradientBackground,
      //       child: ListView(
      //         children: [
      //           Padding(
      //             padding: EdgeInsets.only(top: 25),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: spreadDeck.draw(1),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text(
      //                 "One card",
      //                 style: Theme.of(context).textTheme.headline5,
      //               ),
      //             ],
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(bottom: 75),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: spreadDeck.draw(3),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text(
      //                 "Three cards",
      //                 style: Theme.of(context).textTheme.headline5,
      //               ),
      //             ],
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(bottom: 75),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: spreadDeck.draw(1),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: spreadDeck.draw(3),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: spreadDeck.draw(1),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text(
      //                 "Elemental",
      //                 style: Theme.of(context).textTheme.headline5,
      //               ),
      //             ],
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(bottom: 75),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: spreadDeck.draw(1),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: spreadDeck.draw(6),
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text(
      //                 "The week ahead",
      //                 style: Theme.of(context).textTheme.headline5,
      //               ),
      //             ],
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(bottom: 75),
      //           ),
      //         ],
      //       )),
      // ),
    );
  }
}
