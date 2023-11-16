import 'package:android_app/widget_btandroid2/image_view_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ImageView());
}

class ImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nhập số điện thoại'),
      ),
      body: ImageView_Menu(),
    );
  }
}