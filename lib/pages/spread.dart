import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarot/widgets/arcana.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class SpreadPage extends StatefulWidget {
  final String name;
  final List<int> layout;

  SpreadPage({@required this.name, @required this.layout});

  @override
  _SpreadPageState createState() => _SpreadPageState();
}

class _SpreadPageState extends State<SpreadPage> {
  List<CardInfo> deck = TarotArcana().getAll();

  @override
  initState() {
    super.initState();
    deck.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        this.widget.name,
        style: GoogleFonts.robotoMono(),
      )),
      body: Container(
        padding: EdgeInsets.all(50),
        decoration: gradientBackground,
        height: double.infinity,
        width: double.infinity,
        child: FittedBox(
          child: buildLayout(
            this.widget.layout,
            List.generate(
              getTotalCards(this.widget.layout),
              (index) => TarotCard(
                type: deck.removeLast(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
