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
        title: const Text('Custom Button'),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            CircularButton(
              width: 60,
              height: 60,
              color: Colors.deepOrange,
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onClick: () {
                print("Clicked");
              },
            ),
            CircularButton(
              width: 60,
              height: 60,
              color: Colors.green,
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              onClick: () {
                print("Clicked");
              },
            )
          ],
        ),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Icon icon;
  final VoidCallback onClick;

  const CircularButton(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      required this.icon,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(icon: icon, onPressed: onClick),
    );
  }
}
