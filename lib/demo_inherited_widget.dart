import 'dart:math';

import 'package:flutter/material.dart';

class DemoInheritedWidget extends StatefulWidget {
  const DemoInheritedWidget({super.key});

  @override
  State<DemoInheritedWidget> createState() => _DemoInheritedWidgetState();
}

class _DemoInheritedWidgetState extends State<DemoInheritedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo inherited widget"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Ongba(
          child: Chame(
            child: Concai(),
          ),
        ),
      ),
    );
  }
}

class Ongba extends StatefulWidget {
  Widget child;
  Ongba({required this.child});

  @override
  State<Ongba> createState() => _OngbaState();
}

class _OngbaState extends State<Ongba> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Ong ba widget"),
        Text("Number random = $number"),
        ElevatedButton(onPressed: () {
           setState(() {
             number = Random().nextInt(1000);
           });
        }, child: Text("Random number")),
        widget.child
      ],
    );
  }
}


class Chame extends StatefulWidget {
  Widget child;
  Chame({required this.child});

  @override
  State<Chame> createState() => _ChameState();
}

class _ChameState extends State<Chame> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Cha me widget"),
        widget.child
      ],
    );
  }
}

class Concai extends StatefulWidget {
  const Concai({super.key});

  @override
  State<Concai> createState() => _ConcaiState();
}

class _ConcaiState extends State<Concai> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Con cai widget"),
    );
  }
}
