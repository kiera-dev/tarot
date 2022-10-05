import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarot/pages/spread_choice.dart';
import 'package:tarot/widgets/common.dart';

class TitlePage extends StatelessWidget {
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
                  BorderedText(
                    child: Text(
                      "Tarot",
                      style: GoogleFonts.sacramento(
                        fontSize: 72,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
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
                      style: GoogleFonts.roboto(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
