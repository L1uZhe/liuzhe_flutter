import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.white,
        padding:EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
//              DrawerHeader(
//                child: Text('header'.toUpperCase()),
//                decoration: BoxDecoration(
//                  color: Colors.grey[100],
//                ),
//              ),
            UserAccountsDrawerHeader(
              accountName: Text("liuzhe", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
              accountEmail: Text("liuzhe@163.com",style: TextStyle(color: Colors.white),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560241284013&di=22740106c30187e5d8766ca0bd2541f8&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201808%2F30%2F20180830232819_pkogt.thumb.700_0.jpeg'),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                  image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560241574496&di=66d24a6bab168b3264e529550ad39445&imgtype=0&src=http%3A%2F%2Fimg5.duitang.com%2Fuploads%2Fitem%2F201512%2F26%2F20151226213002_XvMAG.jpeg'),
                  fit: BoxFit.cover,
//                      colorFilter: ColorFilter.mode(
//                          Colors.yellow[400].withOpacity(0.6),
//                        BlendMode.hardLight
//                      ),
                ),
              ),
            ),
            ListTile(
              title: Text('Message',textAlign: TextAlign.right,),
              trailing: Icon(Icons.message, color:Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Favorite',textAlign: TextAlign.right,),
              trailing: Icon(Icons.favorite, color:Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Settings',textAlign: TextAlign.right,),
              trailing: Icon(Icons.settings, color:Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context),
            ),
          ],
        )
    );
  }
}