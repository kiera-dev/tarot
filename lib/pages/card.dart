import 'package:flutter/material.dart';
import 'package:tarot/widgets/tarot.dart';

class CardPage extends StatelessWidget {
  String name;
  List<int> rows;
  CardPage(this.name, this.rows);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TarotSpread(
          name: this.name,
          rows: this.rows,
        ),
      ),
    );
  }
}
