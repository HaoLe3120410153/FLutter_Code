import 'package:android_app/widget_btandroid5/touch_draw_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Touch_draw());
}

class Touch_draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Touch Canvas App'),
        ),
        body: TouchCanvas(),
      ),
    );
  }
}