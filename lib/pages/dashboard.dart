// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:master_project/pages/home_page.dart';
import 'package:master_project/pages/profile_page.dart';
import 'package:master_project/pages/settings_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<dynamic> _pages = [
    HomePage(),
    SettingsPage(),
    ProfilePage(),
  ];

  void _navigateBottomNavigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 190, 195, 224),
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 100,
              ),
            ),
            ListTile(
              title: const Text('P R O F I L E'),
              leading: Icon(Icons.home, color: Colors.grey),
              onTap: () {
                // Update the state of the app.
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              title: const Text('S E T T I N G S'),
              leading: Icon(Icons.settings, color: Colors.grey),
              onTap: () {
                // Update the state of the app.
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: _navigateBottomNavigationBar,
        currentIndex: _selectedIndex,
      ),
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36.0,
              ),
            ],
          )
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}
