import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _w = 100.0;
  var _h = 100.0;
  var _b = 0.0;
  var _br = 0.0;

  AniFunc() {
    setState(() {
      _w = _w == 100.0 ? 200.0 : 100.0;
      _h = _h == 100.0 ? 200.0 : 100.0;
    });
  }

  changeBorder() {
    setState(() {
      _b = _b == 0.0 ? 10.0 : 0.0;
    });
  }

  changeBorderRadius() {
    setState(() {
      _br = _br == 0.0 ? 100.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        height: 800,
        width: 500,
        color: Colors.black,
        child: Column(
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              height: _h,
              width: _w,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                border: Border.all(
                  color: Colors.yellow,
                  width: _b,
                ),
                borderRadius: BorderRadius.circular(_br),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                AniFunc();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'Change Border',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                changeBorder();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                changeBorderRadius();
              },
            )
          ],
        ),
      ),
    );
  }
}
