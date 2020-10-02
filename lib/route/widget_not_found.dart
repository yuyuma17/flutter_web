import 'package:flutter/material.dart';

class WidgetNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("頁面不存在"),
      ),
      body: Center(
        child: Text("頁面不存在"),
      ),
    );
  }
}
