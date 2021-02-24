import 'package:flutter/material.dart';
import 'package:social_demo/src/styles/themes.dart';
import 'routes.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Demo',
      theme: defaultTheme,
      onGenerateRoute: routes,
    );
  }
}