import 'package:flutter/material.dart';

class App extends StatefulWidget {
   @override
   State<StatefulWidget> createState() {
     return AppState();
   }
}

class AppState extends State<App> {
  int counter = 0;
  @override
  Widget build(BuildContext cotext) {
    return MaterialApp(
      home: Scaffold(
        body: Text("${counter}"),
        appBar: AppBar(
          title: Text("Images"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}