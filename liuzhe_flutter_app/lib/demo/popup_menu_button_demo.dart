import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  PopupMenuButtonDemo({Key key}) : super(key: key);

  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currenMenuItem = 'Home';
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currenMenuItem),
                PopupMenuButton(
                  onSelected: (value){
                    print(value);
                    setState(() {
                      _currenMenuItem = value;
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: 'Home',
                      child: Text('Home'),
                    ),
                    PopupMenuItem(
                      value: 'Discovwe',
                      child: Text('Discovwe'),
                    ),
                    PopupMenuItem(
                      value: 'COMM',
                      child: Text('COMM'),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}