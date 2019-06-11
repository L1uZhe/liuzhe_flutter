import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70//pageMenu水波纹效果颜色
        )
    );
  }
}

class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigration',
            onPressed: () => debugPrint('点击点击'),
          ),
          title: Text("LIUZHE"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('右侧点击点击'),
            ),
//          IconButton(
//            icon: Icon(Icons.more_horiz),
//            tooltip: 'Search',
//            onPressed: () => debugPrint('右侧点击点击'),
//          ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
//            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ) ,
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 128, color: Colors.black12),
            Icon(Icons.change_history, size: 128, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128, color: Colors.black12),
          ],
        ),
        drawer: Container(
          color: Colors.white,
          padding:EdgeInsets.all(8.0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('header'.toUpperCase()),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
              ),
              ListTile(
                title: Text('Message',textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color:Colors.black12, size: 22.0),
              ),
              ListTile(
                title: Text('Favorite',textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color:Colors.black12, size: 22.0),
              ),
              ListTile(
                title: Text('Settings',textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color:Colors.black12, size: 22.0),
              ),
            ],
          )
        ),
//        endDrawer: Text('112233'),//右侧抽屉
      ),
    );
  }
}


