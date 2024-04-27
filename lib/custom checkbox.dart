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
  bool? mon = false;
  bool? tue = false;
  bool? wed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text('Custom checkbox'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            customCheckBox('Mon', mon),
            customCheckBox('Tue', tue),
            customCheckBox('Wed', wed),
          ],
        ),
      ),
    );
  }

  Column customCheckBox(String s, bool? val) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(s),
          Checkbox(
              value: val,
              onChanged: (bool? value) {
                setState(() {
                  switch (s) {
                    case 'Mon':
                      {
                        mon = value;
                        print(mon);
                      }
                    case 'Tue':
                      {
                        tue = value;
                        print(tue);
                      }
                    case 'Wed':
                      {
                        wed = value;
                        print(wed);
                      }
                  }
                });
              })
        ]);
  }
}
