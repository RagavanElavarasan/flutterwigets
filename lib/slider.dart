import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double rate = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Slider',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Slider(
          value: rate,
          onChanged: (newRate) {
            setState(() {
              rate = newRate;
            });
          },
          min: 0,
          max: 100,
          divisions: 5,
          label: "$rate",
        ),
      ),
    );
  }
}
