import 'package:flutter/material.dart';
import 'package:flutter_inheritted_widget29092023/demo_future_widget.dart';
import 'package:flutter_inheritted_widget29092023/demo_inherited_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoFutureWidgetPage()
    );
  }
}