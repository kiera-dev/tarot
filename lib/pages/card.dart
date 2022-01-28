import 'package:flutter/material.dart';
import 'package:tarot/widgets/common.dart';
import 'package:tarot/widgets/tarot.dart';

class CardPage extends StatefulWidget {
  final String name;
  final List<int> rows;
  CardPage(this.name, this.rows);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation loadAnimation;

  @override
  void initState() {
    super.initState();
    this.controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    this.loadAnimation = Tween<double>(
      begin: 0.0,
      end: 300.0 * this.widget.rows.length,
    ).animate(this.controller);
    this.controller.addListener(() {
      setState(() {});
    });
    this.controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.widget.name),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => CardPage(
                this.widget.name,
                this.widget.rows,
              ),
            ),
          );
        },
      ),
      body: Container(
        decoration: gradientBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: this.loadAnimation.value,
                  child: TarotSpread(
                    name: this.widget.name,
                    rows: this.widget.rows,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
