import 'package:flutter/material.dart';
import 'package:android_app/widget_btandroid2/current_time_widget.dart';

void main() {
  runApp(ShowTime());
}

class ShowTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Time App'),
      ),
      body: TimeDisplay(),
    );
  }
}