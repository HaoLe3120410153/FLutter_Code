import 'package:flutter/material.dart';

class ImageView_Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chào bạn đến câu 1 bài android 2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Màu khung hình
                width: 1.0, // Độ dày khung hình
              ),
            ),
            child: Center(
              child: ImageView(),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: ButtonLayout(),
          ),
        ],
      ),
    );
  }
}

class ImageView extends StatelessWidget {
  String imageName = "assets/image/R.png";
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageName,
      height: 200,
      width: 200,
    );
  }
}

class ButtonLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // Xử lý khi nút 1 được nhấn
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: 20, horizontal: 50), // Điều chỉnh kích thước của nút
            minimumSize: Size(250, 40),
          ),
          child: Text('New Game'),
        ),
        SizedBox(height: 16), // Khoảng cách giữa các nút
        ElevatedButton(
          onPressed: () {
            // Xử lý khi nút 2 được nhấn
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: 20, horizontal: 50), // Điều chỉnh kích thước của nút
            minimumSize: Size(250, 40),
          ),
          child: Text('Continue Game'),
        ),
        SizedBox(height: 16), // Khoảng cách giữa các nút
        ElevatedButton(
          onPressed: () {
            // Xử lý khi nút 3 được nhấn
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: 20, horizontal: 50), // Điều chỉnh kích thước của nút
            minimumSize: Size(250, 40),
          ),
          child: Text('Help Game'),
        ),
        SizedBox(height: 16), // Khoảng cách giữa các nút
        ElevatedButton(
          onPressed: () {
            // Xử lý khi nút 4 được nhấn
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: 20, horizontal: 50), // Điều chỉnh kích thước của nút
            minimumSize: Size(250, 40),
          ),
          child: Text('Quick Game'),
        ),
      ],
    );
  }
}