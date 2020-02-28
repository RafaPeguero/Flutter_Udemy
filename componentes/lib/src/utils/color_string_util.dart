import 'package:flutter/material.dart';

final _colors = <String, Color> {
  'lightGreen' : Colors.lightGreen,
  'orangeAccent':Colors.orangeAccent ,
  'purpleAccent': Colors.purpleAccent,
  'blueAccent': Colors.blueAccent,
  'black87': Colors.black87
};  


Color getColor(String nombreColor) {
  return _colors[nombreColor];
}