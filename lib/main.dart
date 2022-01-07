import 'package:flutter/material.dart';
import 'package:starbucks_clone/ui/theme/app_theme.dart';
import 'package:starbucks_clone/ui/widget/layout/app_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appThemeData,
      home: const AppLayout(),
      routes: {},
    );
  }
}
