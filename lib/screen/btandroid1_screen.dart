import 'package:android_app/screen_btandroid1/comment_screen.dart';
import 'package:flutter/material.dart';

class BT_Android1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BT_Android 1'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommentWidget()),
                );
              },
              child: Text('Câu 1'),
            ),
          ],
        ),
      ),
    );
  }
}
