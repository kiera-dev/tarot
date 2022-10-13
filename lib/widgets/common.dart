import 'package:flutter/material.dart';

BoxDecoration gradientBackground = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF163a41),
      Color(0xFF14252b),
      Color(0xFF020024),
    ],
  ),
);

int getTotalCards(List<int> layout) {
  int totalCards = 0;
  layout.forEach((row) {
    totalCards += row;
  });
  return totalCards;
}

Column buildLayout(List<int> layout, List<Widget> cards) {
  if (getTotalCards(layout) != cards.length) {
    throw Exception(
        '${getTotalCards(layout)} cards needed to build layout, but ${cards.length} provided.');
  }

  List<Widget> layoutRows = [];
  layout.forEach((row) {
    Row layoutRow = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [],
    );
    for (var i = 0; i < row; i++) {
      if (i % 2 != 0) {
        layoutRow.children.add(SizedBox(width: 25));
        layoutRow.children.add(cards.removeLast());
        layoutRow.children.add(SizedBox(width: 25));
      } else {
        layoutRow.children.add(cards.removeLast());
      }
    }
    layoutRows.add(layoutRow);
    layoutRows.add(SizedBox(height: 25));
  });

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: layoutRows,
  );
}

Widget reverseWidget(Widget inputWidget) {
  return RotationTransition(
    turns: new AlwaysStoppedAnimation(180 / 360),
    child: inputWidget,
  );
}
