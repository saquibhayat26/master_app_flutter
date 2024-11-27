// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:master_project/apps/app1/home.dart';
import 'package:master_project/apps/app2/home.dart';
import 'package:master_project/apps/app3/home.dart';
import 'package:master_project/apps/app4/home.dart';
import 'package:master_project/apps/app5/home.dart';
import 'package:master_project/pages/dashboard.dart';
import 'package:master_project/pages/profile_page.dart';
import 'package:master_project/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
      routes: {
        // Add routes here
        // For example:
        // '/': (context) => HomePage(),
        // '/second': (context) => SecondPage(),
        // Add more routes as needed
        '/app1': (context) => HomePage1(),
        '/app2': (context) => HomePage2(),
        '/app3': (context) => HomePage3(),
        '/app4': (context) => HomePage4(),
        '/app5': (context) => HomePage5(),
        '/settings': (context) => const SettingsPage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}
