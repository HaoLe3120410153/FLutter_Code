import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedColorIndex = 0;

  List<Color> backgroundColors = [
    Colors.white, // Default color
    Colors.red,
    Colors.green,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thay đổi màu nền'),
      ),
      body: Container(
        color: backgroundColors[selectedColorIndex],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(
                title: Text('White'),
                value: 0,
                groupValue: selectedColorIndex,
                onChanged: (value) {
                  setState(() {
                    selectedColorIndex = value as int;
                  });
                },
              ),
              RadioListTile(
                title: Text('Red'),
                value: 1,
                groupValue: selectedColorIndex,
                onChanged: (value) {
                  setState(() {
                    selectedColorIndex = value as int;
                  });
                },
              ),
              RadioListTile(
                title: Text('Green'),
                value: 2,
                groupValue: selectedColorIndex,
                onChanged: (value) {
                  setState(() {
                    selectedColorIndex = value as int;
                  });
                },
              ),
              RadioListTile(
                title: Text('Grey'),
                value: 3,
                groupValue: selectedColorIndex,
                onChanged: (value) {
                  setState(() {
                    selectedColorIndex = value as int;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
