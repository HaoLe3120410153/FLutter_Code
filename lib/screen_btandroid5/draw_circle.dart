import 'package:flutter/material.dart';
import 'package:android_app/widget_btandroid5/draw_circle_widget.dart';

void main() {
  runApp(Draw_Circle());
}

class Draw_Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Graphics(),
    );
  }
}