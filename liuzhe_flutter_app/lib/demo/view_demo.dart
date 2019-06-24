import 'package:flutter/material.dart';
class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MyHomePage();
  }
}

class MyHomePage extends StatelessWidget {//网格图片
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        // childAspectRatio: 2/3,
      children: List.generate(100, (idx){
        return Card(child: Container(
          color: Colors.greenAccent,
          child: Text('$idx'),
        ),);
      }),),

    );
  }
}
class PageViewDemo extends StatelessWidget{//滚动视图
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      scrollDirection: Axis.vertical,
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),
      controller: PageController(
        initialPage: 1,
        keepPage: false,
        viewportFraction: 0.7,//占屏幕比例
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
      ],
    );
  }
}