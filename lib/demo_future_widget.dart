import 'dart:math';

import 'package:flutter/material.dart';

class DemoFutureWidgetPage extends StatefulWidget {
  @override
  State<DemoFutureWidgetPage> createState() => _DemoFutureWidgetPageState();
}

class _DemoFutureWidgetPageState extends State<DemoFutureWidgetPage> {
  Future<int> randomNumber() {
    return Future.delayed(Duration(seconds: 2), () => Random().nextInt(100));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future widget"),
      ),
      body: Container(
        child: FutureBuilder(
          initialData: null,
          future: randomNumber(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                print("None: Init value");
                return Center(child: Text("Init value"));
              case ConnectionState.waiting:
                print("Waiting");
                return Center(child: Text("waiting"));
              case ConnectionState.active:
              case ConnectionState.done:
                print("Active: Has value: ${snapshot.data}");
                return Center(child: Text(snapshot.data.toString() ?? ""));
            }
          },
        ),
      ),
    );
  }
}
