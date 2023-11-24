import 'package:flutter/material.dart';

class MyCanvas extends StatefulWidget {
  @override
  _MyCanvasState createState() => _MyCanvasState();
}

class _MyCanvasState extends State<MyCanvas> {
  List<String> imagePaths = [
    "res/drawable/bitmap1.png",
    "res/drawable/bitmap2.png",
    "res/drawable/bitmap3.png",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bitmap Animation'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = (currentIndex + 1) % imagePaths.length;
          });
        },
        child: Center(
          child: Image.asset(
            imagePaths[currentIndex],
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
