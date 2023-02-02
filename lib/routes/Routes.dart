import 'package:flutter/material.dart';
import '../files/Main.dart';
import '../files//Page1.dart';
import '../files//Page2.dart';
import '../files//Page3.dart';

//配置路由规则
final routes = {
  '/': (context) => Main(),
  '/page1': (context) => Page1(),
  '/page2': (context,{arguments}) => Page2(arguments:arguments),
  '/page3': (context) => Page3(),
};

// 如果你要把路由抽离出去，需要写下面这一堆的代码
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
