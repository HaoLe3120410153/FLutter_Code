import 'package:android_app/widget_layer2/phone_input.dart';
import 'package:flutter/material.dart';
import 'package:android_app/widget_layer2/image_view_menu.dart';

class BT_Android2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
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
                child: Text('Câu 2'))
          ],
        ),
      ),
    );
  }
}
