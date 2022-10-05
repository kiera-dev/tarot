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

BoxDecoration artDecoBackground = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("images/art_deco.png"),
    fit: BoxFit.cover,
  ),
);
