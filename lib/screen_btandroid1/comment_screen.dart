import 'package:flutter/material.dart';
import 'package:android_app/widget_btandroid1/comment_widget.dart';

void main() {
  runApp(CommentWidget());
}

class CommentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment_widget'),
      ),
      body: CommentWidgetLayout(),
    );
  }
}