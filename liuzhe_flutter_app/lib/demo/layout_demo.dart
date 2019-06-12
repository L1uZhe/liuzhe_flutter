import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          StackDemo(),
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 300,
          child: Container(
            alignment: Alignment(0.0, 0.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(Icons.ac_unit,color: Colors.white,size: 32.0,),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              shape: BoxShape.circle,
              gradient: RadialGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 54, 255, 1.0),
                  ]
              ),
            ),
            child: Icon(Icons.beach_access,color: Colors.white,size: 32.0,),
          ),
        ),
        Positioned(
            right: 20,
            top: 20,
            child: Icon(Icons.ac_unit,color: Colors.white,size: 32.0,)
        ),
      ],
    );
  }
}

class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;

  IconBadge(this.icon,{
    this.size = 32.0,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon,size: size, color: Colors.white),
      width: size + 60,
      height:  size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}