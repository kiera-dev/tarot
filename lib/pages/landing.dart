import 'package:flutter/material.dart';
import 'package:tarot/common_widgets.dart';
import 'package:tarot/pages/spread.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: gradientBackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tarot",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Iiiiiiiiit's tarot time.",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SpreadPage()),
                      );
                    },
                    child: Text(
                      "Start",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
