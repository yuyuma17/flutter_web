import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart' as Fluro;
import 'package:flutterweb/route/routes.dart';

import 'route/application.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = Fluro.Router();
    Routes.configureRoutes(router);
    Application.router = router;

    return MaterialApp(
      title: 'Flutter Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    );
  }
}
