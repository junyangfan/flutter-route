import 'package:flutter/material.dart';
import './Detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('跳到详情页面'),
            onPressed: (){
              //跳转页面
              Navigator.of(context).push(
                MaterialPageRoute(
                  //传值
                  builder: (context)=>Detail()
                )
              );
            },
          ),
          RaisedButton(
            child: Text('命名式路由跳转'),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>Detail()
                )
              );
            },
          )
        ],
      ),
    );
  }
}