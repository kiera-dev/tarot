import 'package:flutter/material.dart';
import 'package:tarot/pages/card.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class SpreadInkWell extends StatefulWidget {
  TarotSpread spread;
  SpreadInkWell({@required this.spread});

  @override
  _SpreadInkWellState createState() => _SpreadInkWellState();
}

class _SpreadInkWellState extends State<SpreadInkWell> {
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
        child: this.widget.spread,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CardPage(
              this.widget.spread.name,
              this.widget.spread.rows,
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
  Map<String, List<int>> spreads = {
    'One Card': [1],
    'Three Card': [3],
    'Elemental': [1, 3, 1],
    'The Week Ahead': [1, 3, 3],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        decoration: gradientBackground,
        child: ListView.builder(
          padding: EdgeInsets.only(
            bottom: 50,
            top: 50,
          ),
          itemCount: this.spreads.length,
          itemBuilder: (context, index) {
            var spreadData = this.spreads.entries.elementAt(index);
            return Column(
              children: [
                Text(
                  spreadData.key,
                  style: TextStyle(fontSize: 35),
                ),
                SpreadInkWell(
                  spread: TarotSpread(
                    name: spreadData.key,
                    rows: spreadData.value,
                    flippable: false,
                    startFlipped: false,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
