import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Font'),
      ),
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'தமிழ்',
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: "NotoSerifTamil-Italic-VariableFont_wdth,wght"),
            ),
            Text(
              'தமிழ்',
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: "NotoSerifTamil-VariableFont_wdth,wght"),
            ),
          ],
        ),
      ),
    );
  }
}
