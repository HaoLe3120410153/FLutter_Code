import 'package:flutter/material.dart';


class DataInputWidget extends StatefulWidget {
  @override
  _DataInputWidgetState createState() => _DataInputWidgetState();
}

class _DataInputWidgetState extends State<DataInputWidget> {
  TextEditingController textController = TextEditingController();
  String inputData = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: textController,
            decoration: InputDecoration(labelText: 'Mời nhập dữ liệu'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              setState(() {
                inputData = textController.text;
              });
              showDataAlertDialog(context);
            },
            child: Text('Enter'),
          ),
        ],
      ),
    );
  }

  void showDataAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Dữ liệu được nhập'),
          content: Text(inputData),
          actions: [
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

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}