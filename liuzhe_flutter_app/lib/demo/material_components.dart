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
import './alert_dialog_demo.dart';
import './bottom_sheet_demo.dart';
import './snack_bar_demo.dart';
import './expansion_panel_demo.dart';
import './chip_demo.dart';
import './data_table_demo.dart';
import './paginated_data_table_demo.dart';
import './card_demo.dart';
import './stepper_demo.dart';
import 'state/state_management_demo.dart';
import './stream/stream_demo.dart';
import './Animation_demo.dart';
import './rxdart/rxdart_demo.dart';
import './bloc/bloc_demo.dart';
import './http/http_demo.dart';
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
          ListItem(title: "http网络请求",page: HttpDemo()),
          ListItem(title: "bloc",page: BlocDemo()),
          ListItem(title: "rxdart",page: RxDartDemo()),
          ListItem(title: "动画。",page: SampleApp()),
          ListItem(title: "Stream创建，停止，暂停，恢复监听。",page: StreamDemo()),
          ListItem(title: '使用ScopedModel传递数据',page: StateManagementDemo()),
          ListItem(title: '进度列表(可选)',page: StepperDemo()),
          ListItem(title: '卡片列表',page: CardDemo()),
          ListItem(title: 'tableview分页及排序',page: PaginatedDataTableDemo()),
          ListItem(title: 'tableview及排序',page: DataTableDemo()),
          ListItem(title: 'chip名称选项按钮,包含多选单选删除',page: ChipDemo()),
          ListItem(title: '伸缩选择面板',page: ExpansionPanelDemo()),
          ListItem(title: '底部黑色提示框',page: SnackBarButton()),
          ListItem(title: '底部弹出选择框',page: BottomSheetDemo()),
          ListItem(title: 'alert提示框',page: AlertDialogDemo()),
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