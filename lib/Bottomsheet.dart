import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void showBottom() {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text('Security Alert.....! '),
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text('My App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
          ),
          onPressed: () {},
          child: const Text(
            'Click Me',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
