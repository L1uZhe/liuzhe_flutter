import 'package:flutter/material.dart';
class FormDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormDemo'),
        elevation: 0.0,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor:  Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterForm(),
            ],
          ),
        ),
      ),

    );
  }
}

class TextFidldDemo extends StatefulWidget {
  TextFidldDemo({Key key}) : super(key: key);

  _TextFidldDemoState createState() => _TextFidldDemoState();
}

class _TextFidldDemoState extends State<TextFidldDemo> {
  final textEditingContorller = TextEditingController();

  void dispose(){
    textEditingContorller.dispose();
    super.dispose();
  }

  @override
  void initState(){
    super.initState();
    // textEditingContorller.text = 'hi';
    textEditingContorller.addListener(
      (){
        debugPrint('input ${textEditingContorller.text}');
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:  textEditingContorller,
      onChanged: (value){
        debugPrint('input $value');
      },
      onSubmitted: (value){
        debugPrint('submit $value');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: "Title",
        hintText: ' Enter the post title',
        // border: OutlineInputBorder(),
        //  border: InputBorder.none,
        // filled: true,
        // fillColor: Colors.black,
      ),
    );
  }
}


//用户名密码和登录按钮
class RegisterForm extends StatefulWidget {
  RegisterForm({Key key}) : super(key: key);

  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final RegisterFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void submitRegisterForm(){
    if (RegisterFormKey.currentState.validate()) {
      RegisterFormKey.currentState.save();
      debugPrint('username: $username');
      debugPrint('password: $password');
      
      Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('正在登录'),
          )
      );

    } else {
      setState(() {
        autovalidate = true;
      });
    }
  }

   String  validateUsername(value) {
    if (value.isEmpty) {
    return '用户名不能为空';
    }
    return  null;
  }

    String  validatePassword(value) {
    if (value.isEmpty) {
    return '密码不能为空';
    }
    return  null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: RegisterFormKey,
       child: Column(
         children: <Widget>[
           TextFormField(
             decoration: InputDecoration(
               labelText: 'Username',
               helperText: "",
             ),
             onSaved: (value){
               username = value;
             },
             validator: validateUsername,
             autovalidate: autovalidate,//自动验证
           ),
           TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                helperText: "",
              ),
              onSaved: (value){
               password = value;
             },
             validator: validatePassword,
             autovalidate: autovalidate,//自动验证
           ),
           SizedBox(height: 32,),
           Container(
             width: double.infinity,
             child: RaisedButton(
               color: Theme.of(context).accentColor,
               child: Text('Register', style:TextStyle(color:Colors.white)),
               elevation: 0,
               onPressed: submitRegisterForm,
             ),
           ),
         ],
       ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  const ThemeDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}