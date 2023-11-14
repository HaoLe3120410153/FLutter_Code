import 'package:flutter/material.dart';
 import 'package:android_app/screen_btandroid2/time_screen.dart';
// import 'package:android_app/screen_btandroid2/internationalization_widget.dart';
// import 'package:android_app/screen_btandroid2/phone_input.dart';
// import 'package:android_app/screen_btandroid2/showcomment_widget.dart';
// import 'package:android_app/screen_btandroid2/image_view_menu.dart';

class BT_Android2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bài tập Android 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageView_Menu()),
                );
              },
              child: Text('Câu 1'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Phone_Call()),
                  );
                },
                child: Text('Câu 2')
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> ShowTime()),
                  );
                },
                child: Text('Câu 3')
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> ShowComment()),
                  );
                },
                child: Text('Câu 4')
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Internationalization()),
                  );
                },
                child: Text('Câu 5'))
          ],
        ),
      ),
    );
  }
}
