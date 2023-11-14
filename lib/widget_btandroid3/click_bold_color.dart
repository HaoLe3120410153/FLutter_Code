import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController = TextEditingController();
  int clickCount = 0;
  bool isnotBold = false;
  bool isGreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Number of Clicks: ',
                    style: TextStyle(
                      fontWeight: isnotBold ? FontWeight.normal : null,
                      color: isnotBold ? Colors.black : null,
                    ),
                  ),
                  TextSpan(
                    text: '$clickCount',
                    style: TextStyle(
                      color: isGreen ? Colors.green : null,
                      fontWeight: isnotBold ? FontWeight.normal : null,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Checkbox(
                  value: isnotBold,
                  onChanged: (value) {
                    setState(() {
                      isnotBold = value!;
                      updateTextField();
                    });
                  },
                ),
                Text('Not Bold'),
                SizedBox(width: 16.0),
                Checkbox(
                  value: isGreen,
                  onChanged: (value) {
                    setState(() {
                      isGreen = value!;
                      updateTextField();
                    });
                  },
                ),
                Text('Green'),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  clickCount++;
                  updateTextField();
                });
              },
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }

  void updateTextField() {
    setState(() {
      // Update the text in the TextField
      _textEditingController.text = 'Number of Clicks: $clickCount';
    });
  }

  // void _showAlertDialog() {
  //   String message = 'Number of Clicks: $clickCount';
  //
  //   if (isBold) {
  //     message = '**$message**';
  //   }
  //
  //   if (isGreen) {
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('Alert'),
  //           content: Text(
  //             message,
  //             style: TextStyle(color: Colors.green),
  //           ),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: Text('OK'),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   } else {
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('Alert'),
  //           content: Text(message),
  //           actions: [
  //             TextButton(
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //               child: Text('OK'),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }
}
