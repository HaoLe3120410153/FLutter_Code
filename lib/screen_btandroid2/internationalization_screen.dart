import 'package:android_app/widget_btandroid2/internationalization_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Internationalization());
}

class Internationalization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chào mừng đến với ứng dụng đa ngôn ngữ'),
      ),
      body: InternationalizationWidget(),
    );
  }
}