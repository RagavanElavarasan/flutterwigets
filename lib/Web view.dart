import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF04aa6d),
        title: Text('Web View'),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.arrow_back)),
          IconButton(onPressed: null, icon: Icon(Icons.arrow_forward)),
        ],
      ),
    );
  }
}
