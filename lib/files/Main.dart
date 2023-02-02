import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('命名式路由'),),
        body: Center(
          child: Column(
            children: <Widget>[
              //定义按钮
              RaisedButton(
                  child: Text("跳转到Page1"),
                  onPressed: () {
                    //需要使用pushNamed方法
                    Navigator.pushNamed(context, "/page1");
                  },
              ),
              SizedBox(height: 20),
              RaisedButton(
                  child: Text("跳转到Page2"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/page2",arguments: {
                      "id":102
                    });
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
