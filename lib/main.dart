import 'package:android_app/screen/btandroid1_screen.dart';
import 'package:android_app/screen/btandroid2_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BT_Android1()),
                );
              },
              child: Text('Bài Tập Android 1'),
            ),
            SizedBox(height: 16), // Khoảng cách giữa các nút
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BT_Android2()),
                );
              },
              child: Text('Bài Tập Android 2'),
            ),
            SizedBox(height: 16), // Khoảng cách giữa các nút
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen3()),
                );
              },
              child: Text('Bài Tập Android 3'),
            ),
            SizedBox(height: 16), // Khoảng cách giữa các nút
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen4()),
                );
              },
              child: Text('Phần mềm đặt món'),
            ),
          ],
        ),
      ),
    );
  }
}
class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Center(
        child: Text('This is Screen 3'),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 4'),
      ),
      body: Center(
        child: Text('This is Screen 4'),
      ),
    );
  }
}
