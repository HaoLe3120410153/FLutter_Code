import 'package:flutter/material.dart';
import 'package:android_app/screen_appdatmon/order_screen.dart';
void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderScreen(),
    );
  }
}