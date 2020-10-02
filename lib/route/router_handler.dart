import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutterweb/page/root_page.dart';
import 'package:flutterweb/route/widget_not_found.dart';

// 路由規則

Handler notFoundHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    print("route not found");
    return WidgetNotFound();
  },
);

Handler rootHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return RootPage();
  },
);
