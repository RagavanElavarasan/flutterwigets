import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Alert'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click Me'),
          onPressed: () {
            String title = 'Alert';
            String content = 'This is an alert dialog';
            showAlert(context, title, content);
          },
        ),
      ),
    );
  }
}

showAlert(BuildContext context, String title, String content) {
  Widget ok = TextButton(
    child: Text('OK'),
    onPressed: () {},
  );
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: [
      ok,
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
