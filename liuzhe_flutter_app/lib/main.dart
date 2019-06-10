import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import './demo/listview-demo.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.yellow
        )
    );
  }
}

class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("flutterDemo"),
        elevation: 0.0,
      ) ,
      body: ListViewDemo(),
    );
  }
}


