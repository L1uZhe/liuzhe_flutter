import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  CheckboxDemo({Key key}) : super(key: key);

  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxItemA = true;
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
               value: _checkboxItemA,
               onChanged: (value){
                 setState(() {
                   _checkboxItemA = value;
                 });
               },
               title: Text('Checkbox Item A'),
               subtitle: Text('Decttsdfd'),
               secondary: Icon(Icons.bookmark),
               selected: _checkboxItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Checkbox(
                //   value: _checkboxItemA,
                //   onChanged: (value){
                //      setState(() {
                //        _checkboxItemA  = value;
                //      });
                //   },
                //   activeColor: Colors.black,
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}