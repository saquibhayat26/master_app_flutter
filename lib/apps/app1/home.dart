// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App1"),
      ),
      body: Center(
        child: Text("This is app1"),
      ),
    );
  }
}
