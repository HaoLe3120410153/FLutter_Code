import 'package:android_app/screen_btandroid5/bitmap.dart';
import 'package:android_app/screen_btandroid5/draw_circle.dart';
import 'package:android_app/screen_btandroid5/touch_draw.dart';
import 'package:flutter/material.dart';

class BT_Android5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bài tập Android 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Draw_Circle()),
                );
              },
              child: Text('Câu 1'),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Touch_draw()),
                );
              },
              child: Text('Câu 2'),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bitmap()),
                );
              },
              child: Text('Câu 3'),
            ),
          ],
        ),
      ),
    );
  }
}