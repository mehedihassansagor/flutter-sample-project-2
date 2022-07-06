import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 280,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              onTap: () {
                print("I am learning");
              },
              tileColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              title: Text("Mehedi Hassan Sagor"),
              subtitle: Text("Flutter developer"),
              trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.star), Text("kire")]),
            ),
          ),
          Row(mainAxisAlignment: (MainAxisAlignment.spaceAround), children: [
            MyContainer(
                onPressed: () {
                  print("calling...");
                },
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.call),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Call")
                ])),
            MyContainer(
                onPressed: () {
                  print("map opening...");
                },
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.navigation),
                  SizedBox(
                    height: 5,
                  ),
                  Text("ROUTE")
                ])),
            MyContainer(
                onPressed: () {
                  print("share clicked...");
                },
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.share),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Share"),
                ]))
          ]),
        ],
      ),
    )));
  }
}
