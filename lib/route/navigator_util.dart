import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import './application.dart';
import './routes.dart';

// 畫面跳轉工具
class NavigatorUtil {
  // 返回
  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  // 返回帶參數
  static void goBackWithParams(BuildContext context, result) {
    Navigator.pop(context, result);
  }

  // 返回指定頁面
  static void goBackUrl(BuildContext context, String title) {
    Navigator.popAndPushNamed(context, title);
  }

  // 跳轉到主頁面
  static void goHomePage(BuildContext context) {
    Application.router.navigateTo(context, Routes.root, replace: true);
  }

  static push(BuildContext context, String path,
      {bool replace = false, bool clearStack = false}) {
    FocusScope.of(context).unfocus();
    Application.router.navigateTo(context, path,
        replace: replace,
        clearStack: clearStack,
        transition: TransitionType.native);
  }

  static present(BuildContext context, String path,
      {bool replace = false,
      bool clearStack = false,
      TransitionType type = TransitionType.native}) {
    FocusScope.of(context).unfocus();
    Application.router.navigateTo(context, path,
        replace: replace, clearStack: clearStack, transition: type);
  }

  static pushResult(
      BuildContext context, String path, Function(Object) function,
      {bool replace = false, bool clearStack = false}) {
    FocusScope.of(context).unfocus();
    Application.router
        .navigateTo(context, path,
            replace: replace,
            clearStack: clearStack,
            transition: TransitionType.native)
        .then((result) {
      if (result == null) {
        return;
      }
      function(result);
    }).catchError((error) {
      print('$error');
    });
  }
}
