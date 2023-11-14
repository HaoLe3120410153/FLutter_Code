import 'package:flutter/material.dart';
import 'package:android_app/widget_btandroid3/menu_widget.dart';

void main(){

  runApp(AllMenu());
}

class AllMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
