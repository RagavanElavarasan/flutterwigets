import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page 1'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const SecondPage(),
            ));
          },
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page 2'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const FirstPage(),
            ));
          },
        ));
  }
}
