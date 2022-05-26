import 'package:flutter/material.dart';

BoxDecoration gradientBackground = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.deepPurple[700],
      Colors.pink[400],
      Colors.amber[400],
    ],
  ),
);

BoxDecoration artDecoBackground = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("images/art_deco.jpg"),
    fit: BoxFit.cover,
  ),
);
