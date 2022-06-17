import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarot/pages/spread_table.dart';
import 'package:tarot/widgets/arcana.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class SpreadOption extends StatefulWidget {
  String name;
  List<int> rows;
  Column spreadWidget;

  SpreadOption({@required this.name, @required this.rows}) {
    var baseArcana = TarotArcana();
    var majorArcana = baseArcana.getMajorArcana();
    this.spreadWidget = Column(children: []);
    this.spreadWidget.children.add(Padding(
          padding: EdgeInsets.only(top: 15),
        ));
    this.rows.forEach((cardCount) {
      Row spreadRow = Row(children: []);
      for (var i = 0; i < cardCount; i++) {
        var arcanaCard = majorArcana.removeLast();
        spreadRow.children.add(
          Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: arcanaCard.image),
            ),
          ),
        );
      }
      this.spreadWidget.children.add(spreadRow);
      this.spreadWidget.children.add(Padding(
            padding: EdgeInsets.only(bottom: 15),
          ));
    });
  }

  @override
  _SpreadOptionState createState() => _SpreadOptionState();
}

class _SpreadOptionState extends State<SpreadOption> {
  bool isHovering = false;

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
          child: this.widget.spreadWidget,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TablePage(
              this.widget.name,
              this.widget.rows,
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

class SpreadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: artDecoBackground,
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
                    style: GoogleFonts.sacramento(fontSize: 50),
                    textAlign: TextAlign.center,
                  ),
                ),
                SpreadOption(
                  name: spreadData.key,
                  rows: spreadData.value,
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
