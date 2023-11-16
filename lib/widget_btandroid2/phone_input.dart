import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart'; // Để sử dụng TextInputFormatter

class PhoneInputLayout extends StatefulWidget {
  @override
  _PhoneInputLayoutState createState() => _PhoneInputLayoutState();
}

class _PhoneInputLayoutState extends State<PhoneInputLayout> {
  String phoneNumber = ""; // Biến để lưu trữ số điện thoại

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Nhập số điện thoại',
            style: TextStyle(fontSize: 20),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              hintText: 'Nhập số điện thoại',
            ),
            keyboardType: TextInputType.phone,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (value) {
              // Lưu giá trị từ TextField vào biến phoneNumber khi giá trị thay đổi.
              setState(() {
                phoneNumber = value;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (phoneNumber.isNotEmpty) {
                String url = 'tel:$phoneNumber';
                launch(url);
              } else {
                // Xử lý khi số điện thoại trống
              }
            },
            child: Text('Gọi'),
          ),
        ],
      ),
    );
  }
}