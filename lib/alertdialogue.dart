import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future showdialogFunc(BuildContext context, String m) async {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                m,
                style: TextStyle(fontSize: 20),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialouge'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Click',
            style: TextStyle(color: Color.fromARGB(255, 55, 29, 29)),
          ),
          onPressed: () {
            showdialogFunc(context, "This is an alert message !");
          },
        ),
      ),
    );
  }
}
