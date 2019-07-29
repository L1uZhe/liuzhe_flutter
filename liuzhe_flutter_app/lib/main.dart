import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_tabbar_demo.dart';
import './demo/listview-demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';
import './demo/state/state_management_demo.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        // home: Home(),
        // home: NavigatorDemo(),
        initialRoute: '/mdc',
        routes: {
          '/': (context) => Home(),
          '/about':(context) => Page(title: 'About'),
          '/mdc': (context) => MaterialCompinents(),
          '/state_management': (context) => StateManagementDemo(),
        },
        theme: ThemeData(
          primarySwatch: Colors.purple,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,//pageMenu水波纹效果颜色
          accentColor: Color.fromRGBO(3, 54, 255, 1),
        )
    );
  }
}

class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
//          leading: IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: 'Navigration',
//            onPressed: () => debugPrint('点击点击'),
//          ),
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
              Tab(icon: Icon(Icons.view_quilt))
            ],
          ),
        ) ,
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
//        endDrawer: Text('112233'),//右侧抽屉

      ),
    );
  }
}


