import 'package:flutter/material.dart';

class SongColor {
  int colorId;
  static List<Color> predefinedColors = [
    Colors.deepOrange,
    Colors.orange,
    Colors.amber,
    Colors.yellow,
  ];

  SongColor({required this.colorId});

  Color get color => predefinedColors[colorId];
}
