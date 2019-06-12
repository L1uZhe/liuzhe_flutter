import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ContainerDemo();
  }
}
//Container样式
class ContainerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage("http://pic25.nipic.com/20121205/10197997_003647426000_2.jpg"),
             alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400].withOpacity(0.5),
              BlendMode.hardLight,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0,color: Colors.white),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
//              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 16),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0,
                ),

              ],
              shape: BoxShape.circle,
              gradient: RadialGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
//RichText样式
class RichTextDemo extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(text: TextSpan(
      text: 'liuzhe',
      style: TextStyle(
        color: Colors.deepPurpleAccent,
        fontSize: 34.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w100,
      ),
      children: [
        TextSpan(
          text: '.com',
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.grey,
          ),
        ),
      ],
    ),
    );
  }
}
//Text样式
class TextDemo extends StatelessWidget{
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '汤姆';
  final String _title = '猫';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('$_author! $_title我以前是一个跑步15分钟都会吐的人。如果有一个最讨厌的运动，跑步就是我的答案。由于心肺功能不好，一跑步就上气不接下气，感觉大腿有很多的蚂蚁在咬一样，特别痒。',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}