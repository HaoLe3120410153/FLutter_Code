import 'package:flutter/material.dart';

class CommentWidgetLayout extends StatefulWidget {
  @override
  _CommentWidgetLayoutState createState() => _CommentWidgetLayoutState();
}

class _CommentWidgetLayoutState extends State<CommentWidgetLayout> {
  TextEditingController _commentController = TextEditingController();
  String imageName = "assets/image/R.png"; // Tên hình ảnh
  // SingleChildScrollView
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Image.asset(
              imageName,
              height: 200.0,
              width: 200.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Tên hình: Android',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _commentController,
                decoration: InputDecoration(
                  labelText: 'Bình luận',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}