// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

List<dynamic> listOfApps = <dynamic>[
  <String, String>{"name": "app1", "description": "THis is description"},
  <String, String>{"name": "app2", "description": "THis is description"},
  <String, String>{"name": "app3", "description": "THis is description"},
  <String, String>{"name": "app4", "description": "THis is description"},
  <String, String>{"name": "app5", "description": "THis is description"},
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: listOfApps.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            // first way to navigate to the app
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       switch (listOfApps[index]["name"]) {
            //         case "app1":
            //           return const HomePage1();
            //         case "app2":
            //           return const HomePage2();
            //         case "app3":
            //           return const HomePage3();
            //         case "app4":
            //           return const HomePage4();
            //         case "app5":
            //           return const HomePage5();
            //         default:
            //           return const HomePage1();
            //       }
            //     },
            //   ),
            // );

            // second way to navigate to the app
            Navigator.pushNamed(context, '/${listOfApps[index]["name"]}');
          },
          child: Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(4),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  listOfApps[index]["name"].toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  listOfApps[index]["description"].toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
