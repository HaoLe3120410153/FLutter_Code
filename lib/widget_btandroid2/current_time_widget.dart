import 'package:flutter/material.dart';

class TimeDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              showCurrentTime(context);
            },
            child: Text('Show Current Time'),
          ),
        ],
      ),
    );
  }

  void showCurrentTime(BuildContext context) {
    DateTime now = DateTime.now();
    String currentTime = "${now.hour}:${now.minute}:${now.second}";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Current Time'),
          content: Text('The current time is $currentTime'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}