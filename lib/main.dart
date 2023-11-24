import 'package:android_app/screen/btandroid1_screen.dart';
import 'package:android_app/screen/btandroid2_screen.dart';
import 'package:android_app/screen/btandroid3_screen.dart';
import 'package:android_app/screen/btandroid5_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:android_app/screen/app_dat_mon_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Localizations Sample App',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('vi'), // VietNamese
      ],
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
                  MaterialPageRoute(builder: (context) =>  BT_Android3()),
                );
              },
              child: Text('Bài Tập Android 3'),
            ),
            SizedBox(height: 16), // Khoảng cách giữa các nút
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodApp()),
                );
              },
              child: Text('Phần mềm đặt món'),
            ),
            SizedBox(height: 16), // Khoảng cách giữa các nút
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BT_Android5()),
                );
              },
              child: Text('Bài tập Android 5'),
            ),
          ],
        ),
      ),
    );
  }
}


