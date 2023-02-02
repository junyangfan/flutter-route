import 'package:flutter/material.dart';

class AddressList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("我的地址列表"),),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          GestureDetector(
            onTap: (){
              //pop后面可以跟上参数
              Navigator.of(context).pop('北京');
            },
            //给子组件添加事件
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26)
              ),
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Colors.blue,
                ),
                title: Text(
                  '北京',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          //给控件中间加间隙
          SizedBox(height: 10),
          GestureDetector(
            onTap: (){
              //pop后面可以跟上参数
              Navigator.of(context).pop('河南');
            },
            //给子组件添加事件
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26)
              ),
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Colors.blue,
                ),
                title: Text(
                  '河南',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
          //给控件中间加间隙
          SizedBox(height: 10),
          GestureDetector(
            onTap: (){
              //pop后面可以跟上参数
              Navigator.of(context).pop('上海');
            },
            //给子组件添加事件
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26)
              ),
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Colors.blue,
                ),
                title: Text(
                  '上海',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}