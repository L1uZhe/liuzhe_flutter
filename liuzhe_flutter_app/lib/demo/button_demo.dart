import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  //普通按钮
  final Widget flatButtonDemo = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      FlatButton(
        child: Text('Button'),
        onPressed: (){},
        splashColor: Colors.grey,
        // textColor: Theme.of(context).accentColor,
      ),
      FlatButton.icon(
        icon: Icon(Icons.add),
        label: Text('Button'),
        onPressed: (){},
        splashColor: Colors.grey,
        // textColor: Theme.of(context).accentColor,
      ),
    ],
  );
  //圆角按钮
  final Widget raisedButtonDemo =  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Theme(
            data:  Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                // shape: BeveledRectangleBorder(
                //    borderRadius: BorderRadius.circular(5),
                // ),
                shape:  StadiumBorder(),
              ),
            ),
            child: RaisedButton(
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            elevation: 0,
            // color: Colors.black,
            // textColor: Theme.of(context).accentColor,
          ),
          ),
          SizedBox(width: 20,),
          RaisedButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        ],
      );

  //边框按钮
  final Widget outlineButtonDemo = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data:  Theme.of(context).copyWith(
                    buttonColor: Theme.of(context).accentColor,
                    buttonTheme: ButtonThemeData(
                      textTheme: ButtonTextTheme.primary,
                      // shape: BeveledRectangleBorder(
                      //    borderRadius: BorderRadius.circular(5),
                      // ),
                      shape:  StadiumBorder(),
                    ),
                  ),
                  child: OutlineButton(
                  child: Text('Button'),
                  onPressed: (){},
                  splashColor: Colors.grey[100],
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  highlightColor: Colors.grey,
                  // color: Colors.black,
                  // textColor: Theme.of(context).accentColor,
                ),
                ),
                SizedBox(width: 20,),
                OutlineButton.icon(
                  icon: Icon(Icons.add),
                  label: Text('Button'),
                  onPressed: (){},
                  splashColor: Colors.grey,
                  textColor: Theme.of(context).accentColor,
                ),
              ],
            );
  //撑满空间按钮
  final Widget fixedButtonDemo = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 160,
            child: OutlineButton(
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            highlightColor: Colors.grey,
          ),
          ),
        ],
      );
  //比例分配空间按钮
  final Widget expandedButtonDemo = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: OutlineButton(
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            highlightColor: Colors.grey,
          ),
          ),
          SizedBox(width: 16,),
          Expanded(
            flex: 2,
            child: OutlineButton(
            child: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey[100],
            borderSide: BorderSide(
              color: Colors.black,
            ),
            highlightColor: Colors.grey,
          ),
          ),
        ],
      );
  //并排多个按钮，设置间隔
  final Widget buttonBarDemo = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                padding: EdgeInsets.symmetric(horizontal: 32),
              ),
            ),
            child: ButtonBar(
            children: <Widget>[
              OutlineButton(
              child: Text('Button'),
              onPressed: (){},
              splashColor: Colors.grey[100],
              borderSide: BorderSide(
                color: Colors.black,
              ),
              highlightColor: Colors.grey,
            ),
            OutlineButton(
              child: Text('Button'),
              onPressed: (){},
              splashColor: Colors.grey[100],
              borderSide: BorderSide(
                color: Colors.black,
              ),
              highlightColor: Colors.grey,
            ),
            ],
          ),
          ),
        ],
      );
    
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedButtonDemo,
            expandedButtonDemo,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}