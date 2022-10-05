import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class DetailPage extends StatelessWidget {
  final TarotCard card;

  DetailPage(this.card);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.card.name,
          style: GoogleFonts.robotoMono(fontSize: 24),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        decoration: gradientBackground,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: this.card.image),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Text(
                  this.card.description,
                  style: GoogleFonts.robotoMono(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
