import 'package:android_app/screen_btandroid3/calculator_screen.dart';
import 'package:android_app/screen_btandroid3/menu_screen.dart';
import 'package:android_app/screen_btandroid3/change_color_screen.dart';
import 'package:android_app/screen_btandroid3/notbold_color_screen.dart';
import 'package:flutter/material.dart';

class BT_Android3 extends StatelessWidget {

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
                      MaterialPageRoute(builder: (context) => AllMenu()),
                  );
                },
                child: Text('Câu 1'),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => notBold_Color()),
                );
              },
              child: Text('Câu 2'),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              child: Text('Câu 3'),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mainscreen_Calculator()),
                );
              },
              child: Text('Câu 4'),
            ),
          ],
        ),
      ),
    );
  }
}
