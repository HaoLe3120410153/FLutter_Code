import 'package:flutter/material.dart';
import 'package:android_app/widget_btandroid2/phone_input.dart';

void main() {
  runApp(Phone_Call());
}

class Phone_Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nhập số điện thoại'),
      ),
      body: PhoneInputLayout(),
    );
  }
}