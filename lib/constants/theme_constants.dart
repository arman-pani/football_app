import 'package:flutter/material.dart';

class ColorConstants {
  static const Color bgColor = Color(0xFFF4F5F7);
  static const Color redBrown = Color(0xFFB6495B);
}

class TextStyleConstants {
  static const TextStyle tableItemTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle tableTitleTextStyle = TextStyle(
    color: Colors.grey,
    fontSize: 12,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle titleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}

List<BoxShadow> boxShadow = [
  BoxShadow(
    color: Colors.black.withOpacity(0.1),
    spreadRadius: 0,
    blurRadius: 10,
    offset: Offset(0, 0),
  ),
];
