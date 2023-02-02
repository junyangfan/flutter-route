import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  //需要定义变量和默认值
  String Test;
  Detail({this.Test='没有给我传值'});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //浮动按钮
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(title: Text("详情页面"),),
      body: Text(this.Test),
    );
  }
}