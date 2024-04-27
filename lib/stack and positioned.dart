import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack | Positioned'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              Container(
                height: 250,
                width: 250,
                color: Colors.amberAccent,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
