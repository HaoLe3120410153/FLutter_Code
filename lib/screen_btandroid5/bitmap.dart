import 'package:flutter/material.dart';
import 'package:android_app/widget_btandroid5/bitmap_widget.dart';


void main() {
  runApp(Bitmap());
}

class Bitmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCanvas(),
    );
  }
}