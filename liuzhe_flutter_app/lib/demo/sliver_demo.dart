import 'package:flutter/material.dart';
import 'package:liuzhe_flutter_app/model/post.dart';

class SliverDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
        SliverAppBar(
          // title: Text('LIUZHE'),
          // pinned: true,
          floating: true,
          expandedHeight: 178,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'LIUzhe'.toUpperCase(),
              style: TextStyle(
                fontSize: 15,
                letterSpacing: 3,
                fontWeight: FontWeight.w400,
              ),
            ),
            background: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1560241574496&di=66d24a6bab168b3264e529550ad39445&imgtype=0&src=http%3A%2F%2Fimg5.duitang.com%2Fuploads%2Fitem%2F201512%2F26%2F20151226213002_XvMAG.jpeg",
            fit: BoxFit.cover,
            ) ,
          ),
        ),
         SliverSafeArea(
           sliver:SliverPadding(
                padding: EdgeInsets.all(8.0),
                sliver: SliverListDemo(),
         ),
         ),
        ],
      ),
    );
  }
}
class SliverListDemo extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Material(
                    borderRadius: BorderRadius.circular(12),
                    elevation: 14.0,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    
                    child: Stack(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 16/9,
                          child: Image.network(
                            posts[index].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 32,
                          left: 32,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                posts[index].title,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                                ),
                              ),
                              Text(
                                posts[index].author,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: posts.length,
            ),
          );
  }
}
class SliverGridDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 1,
              
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index){
                return Container(
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
              childCount: posts.length,
            ),
          );
  }
}