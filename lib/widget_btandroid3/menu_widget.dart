import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  bool isFabOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Menu'),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String result) {
              // Item được chọn
              print('Đã chọn: $result');
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'item1',
                child: Text('Item 1'),
              ),
              PopupMenuItem<String>(
                value: 'item2',
                child: Text('Item 2'),
              ),
              PopupMenuItem<String>(
                value: 'item3',
                child: Text('Item 3'),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text('Drawer Item 1'),
              onTap: () {
                // Handle Drawer Item 1
              },
            ),
            ListTile(
              title: Text('Drawer Item 2'),
              onTap: () {
                // Handle Drawer Item 2
              },
            ),
            ListTile(
              title: Text('Drawer Item 3'),
              onTap: () {
                // Handle Drawer Item 3
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Đây là phần Body!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Ahihi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Ahuhu',
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Handle FAB Click
              setState(() {
                isFabOpen = !isFabOpen;
              });
            },
            child: Icon(isFabOpen ? Icons.close : Icons.add),
          ),
          SizedBox(height: 10),
          Visibility(
            visible: isFabOpen,
            child: Column(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    // Handle Option 1
                  },
                  child: Icon(Icons.accessibility),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    // Handle Option 2
                  },
                  child: Icon(Icons.brush),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    // Handle Option 3
                  },
                  child: Icon(Icons.camera),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
