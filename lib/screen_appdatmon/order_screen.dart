import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderScreen(),
    );
  }
}

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<String> selectedToppings = [];
  String? selectedSize ;
  String? selectedDrink ;
  TextEditingController noteController = TextEditingController();


  void _toggleTopping(String topping) {
    setState(() {
      if (selectedToppings.contains(topping)) {
        selectedToppings.remove(topping);
      } else {
        selectedToppings.add(topping);
      }
    });
  }

  void _placeOrder() {
    // Xử lý logic đặt món ở đây, bạn có thể sử dụng selectedToppings và noteController.text
    String orderDetails =
        "Size: $selectedSize\nSelected toppings: ${selectedToppings.join(', ')}\nDink: $selectedDrink ";
    String note = noteController.text;

    // Hiển thị thông báo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Xem lại đơn đặt hàng!'),
          content: Text('$orderDetails\n\nNote: $note'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _sendSMS(orderDetails, note);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _sendSMS(String orderDetails, String note) async {
    // Specify the recipient phone number
    String phoneNumber = "5556"; // Update with the vendor's phone number

    // Construct the SMS body
    String smsBody = "Đơn đặt hàng mới : \n$orderDetails\n\nGhi Chú: $note";

    // Encode the SMS body for proper URL format
    String encodedSMSBody = Uri.encodeComponent(smsBody);

    // Construct the SMS URI
    String smsUri = 'sms:$phoneNumber?body=$encodedSMSBody';

    // Launch the SMS application
    await launch(smsUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hãy chọn và lấp đầy bụng của bạn'),
        leading: Container(
          height: 10.0,
          width: 10.0,
          child: Image.asset('assets/image/Est.2023.png'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.grey,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Chọn Nước: '),
                            Column(
                              children: [
                                for (String drink in ['CoCaCoLa', 'Pepsi', 'Sprite'])
                                  RadioListTile<String>(
                                    title: Text(drink),
                                    value: drink,
                                    groupValue: selectedDrink,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedDrink = value;
                                      });
                                    },
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Chọn Size: '),
                            Column(
                              children: [
                                for (String size in ['Size M', 'Size L', 'Size XL'])
                                  RadioListTile<String>(
                                    title: Text(size),
                                    value: size,
                                    groupValue: selectedSize,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedSize = value;
                                      });
                                    },
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.green,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Chọn Toppings:'),
                          Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              for (String topping in ['Phô mai', 'Cà chua', 'Nấm', 'Gà', 'Bò', 'Heo'])
                                SizedBox(
                                  width: 150, // Đặt chiều rộng tùy ý cho mỗi CheckboxListTile
                                  child: CheckboxListTile(
                                    title: Text(topping),
                                    value: selectedToppings.contains(topping),
                                    onChanged: (bool? value) {
                                      _toggleTopping(topping);
                                    },
                                  ),
                                ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          Text('Ghi chú riêng: '),
                          TextField(
                            controller: noteController,
                            decoration: InputDecoration(
                              hintText: 'Thêm ghi chú của bạn tại đây!',
                            ),
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: _placeOrder,
                            child: Text('Đặt ngay'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

