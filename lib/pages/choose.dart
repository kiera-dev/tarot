import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarot/pages/spread.dart';
import 'package:tarot/widgets/arcana.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class SpreadOption extends StatefulWidget {
  final String name;
  final List<int> layout;

  SpreadOption({@required this.name, @required this.layout});

  @override
  _SpreadOptionState createState() => _SpreadOptionState();
}

class _SpreadOptionState extends State<SpreadOption> {
  bool isHovering = false;
  List<CardInfo> arcana = TarotArcana().getMajorArcana();

  @override
  initState() {
    super.initState();
    arcana.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: AnimatedContainer(
        curve: Curves.linear,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isHovering ? Colors.black45 : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Container(
            padding: EdgeInsets.all(15),
            child: buildLayout(
              this.widget.layout,
              List.generate(
                getTotalCards(this.widget.layout),
                (int index) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: arcana.elementAt(index).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 300,
                  width: 200,
                ),
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpreadPage(
              name: this.widget.name,
              layout: this.widget.layout,
            ),
          ),
        );
      },
      onHover: (hoverValue) {
        setState(() => isHovering = hoverValue);
      },
    );
  }
}

class SpreadChoicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        decoration: gradientBackground,
        child: ListView.builder(
          padding: EdgeInsets.all(50),
          itemCount: spreads.length,
          itemBuilder: (context, index) {
            var spreadData = spreads.entries.elementAt(index);
            return Column(
              children: [
                BorderedText(
                  child: Text(
                    spreadData.key,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sacramento(fontSize: 50),
                  ),
                ),
                SizedBox(height: 15),
                SpreadOption(
                  name: spreadData.key,
                  layout: spreadData.value,
                ),
                Padding(padding: EdgeInsets.only(bottom: 25)),
              ],
            );
          },
        ),
      ),
    );
  }
}
