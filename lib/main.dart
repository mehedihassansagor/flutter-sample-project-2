import 'package:flutter/material.dart';

const String imageUrl =
    "https://images.pexels.com/photos/358238/pexels-photo-358238.jpeg?auto=compress&cs=tinysrgb&w=600";

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        stops: [0.3, 0.7],
                        colors: [Colors.blue.shade200, Colors.blue],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          spreadRadius: 5,
                          color: Colors.grey,
                        )
                      ]),
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Icon(Icons.call),
                    SizedBox(
                      height: 5,
                    ),
                    Text("CALL")
                  ])),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        stops: [0.3, 0.7],
                        colors: [Colors.blue.shade200, Colors.blue],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          spreadRadius: 5,
                          color: Colors.grey,
                        )
                      ]),
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Icon(Icons.navigation),
                    SizedBox(
                      height: 5,
                    ),
                    Text("ROUTE")
                  ])),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      stops: [0.3, 0.7],
                      colors: [Colors.blue.shade200, Colors.blue],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: 5,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Icon(Icons.share),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Share")
                  ]))
            ]),
          ],
        ),
      )))));
}
