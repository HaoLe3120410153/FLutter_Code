import 'package:android_app/widget_btandroid2/showcomment_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ShowComment());
}

class ShowComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chương trình nhập dữ liệu'),
      ),
      body: DataInputWidget(),
    );
  }
}