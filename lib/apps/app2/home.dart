// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App2"),
      ),
      body: Center(
        child: Text("This is app2"),
      ),
    );
  }
}
