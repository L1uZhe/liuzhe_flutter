import 'package:flutter/material.dart';
import 'package:liuzhe_flutter_app/demo/basic_demo.dart';
import './button_demo.dart';
import 'floating_action.dart';
import 'popup_menu_button_demo.dart';
import './form_demo.dart';
import './checkbox_demo.dart';
import './radio_demo.dart';
import './switch_demo.dart';
import './slider_demo.dart';
import './datetime_demo.dart';
import './simple_dialog_demo.dart';
class MaterialCompinents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialCompinents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: '对话框选择器',page: SimpleDialogDemo()),
          ListItem(title: '时间选择器',page: DateTimeDemo()),
          ListItem(title: '滑动条',page: SliderDemo()),
          ListItem(title: 'Switch选择',page: SwitchDemo()),
          ListItem(title: '二选一Checkbox',page: RadioDemo()),
          ListItem(title: '单选Checkbox',page: CheckboxDemo()),
          ListItem(title: '登录表单',page: FormDemo()),
          ListItem(title: '各种按钮样式',page: ButtonDemo()),
          ListItem(title: '浮动按钮',page: FloatingActionButtonDemo()),
          ListItem(title: '浮动选择框',page: PopupMenuButtonDemo(),)
        ],
      ),
    );
  }
}



class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
              ],
            )
          ],
        ),
      ),
    );
  }
}


class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
   
  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}