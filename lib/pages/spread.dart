import 'package:flutter/material.dart';
import 'package:tarot/common_widgets.dart';

class SpreadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose spread"),
      ),
      body: Center(
        child: Container(
            decoration: gradientBackground,
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TarotCard().getRandom(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "One card",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 75),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: getRandomCards(3),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Three cards",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 75),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TarotCard().getRandom(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TarotCard().getRandom(),
                    TarotCard().getRandom(),
                    TarotCard().getRandom(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TarotCard().getRandom(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Elemental",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 75),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TarotCard().getRandom(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TarotCard().getRandom(),
                    TarotCard().getRandom(),
                    TarotCard().getRandom(),
                    TarotCard().getRandom(),
                    TarotCard().getRandom(),
                    TarotCard().getRandom(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "The week ahead",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ],
            )
            // child: Column(
            //   children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(
            //           "Choose spread",
            //           style: Theme.of(context).textTheme.headline3,
            //         ),
            //       ],
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(bottom: 50),
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         TarotCard().getRandom(),
            //       ],
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(
            //           "One card",
            //           style: Theme.of(context).textTheme.headline5,
            //         ),
            //       ],
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(bottom: 100),
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         TarotCard().getRandom(),
            //         TarotCard().getRandom(),
            //         TarotCard().getRandom(),
            //       ],
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text(
            //           "Three cards",
            //           style: Theme.of(context).textTheme.headline5,
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
            ),
      ),
    );
  }
}
