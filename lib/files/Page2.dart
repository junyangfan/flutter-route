import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  //定义一个变量
  final arguments;
  //重构
  Page2({this.arguments});
  
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page2"),),
      //使用传递过来的值
      body: Text("${widget.arguments['id']}",style: TextStyle(fontSize: 40),),
    );
  }
}